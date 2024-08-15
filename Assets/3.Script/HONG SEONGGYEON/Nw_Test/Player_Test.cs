using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;

enum PlayerType_N
{
    SPEED,
    SCALE
};

public class Player_Test : NetworkBehaviour
{
    [SerializeField]
    private Transform player;
    [SerializeField]
    private Transform camerArm;

    public float walkSpeed = 5f;
    public float runSpeed = 8f;
    private float currentSpeed;
    private float skillSpeed = 1f;
    private float jumpForce = 4f;

    private bool isJumping = false;
    private bool isAttacking = false;
    private bool isDead = false;
    private bool isUsingSkill = false;
    private bool isStun = false;

    private float skillCooldown = 20.0f;
    private float nextSkillTime = 0f;

    private Rigidbody rb;
    public GameObject colider;
    private PlayerType_N playerType;
    Animator player_Ani;

    public override void OnStartServer()
    {
        int choosePlayer = Random.Range(0, 2);
        playerType = (PlayerType_N)choosePlayer;
    }

    private void Start()
    {if (!isLocalPlayer) return;
        player_Ani = player.GetComponent<Animator>();
        rb = player.GetComponent<Rigidbody>();
        player_Ani.SetBool("isWalk", false);

        if (isServer)
        {
            int choosePlayer = Random.Range(0, 2);
            playerType = (PlayerType_N)choosePlayer;
        }
        Debug.Log(playerType);
    }

    private void Update()
    {
        if (isStun || !isLocalPlayer) return;

        LookAround();
        HandleMovementInput();
        HandleJumpInput();
        HandleAttackInput();
        HandleSkillInput();
    }

    private void FixedUpdate()
    {
        if (isLocalPlayer)
        {
            CmdMove(player.position, player.forward);
        }
    }

    private void LookAround()
    {
        Vector2 mouse = new Vector2(Input.GetAxis("Mouse X"), Input.GetAxis("Mouse Y"));
        Vector3 camAngle = camerArm.rotation.eulerAngles;
        float x = camAngle.x - mouse.y;
        if (x < 180f)
        {
            x = Mathf.Clamp(x, -1f, 70f);
        }
        else
        {
            x = Mathf.Clamp(x, 335f, 361f);
        }
        camerArm.rotation = Quaternion.Euler(x, camAngle.y + mouse.x, camAngle.z);
    }

    private void HandleMovementInput()
    {
        if (isAttacking || isDead || isStun) return;

        Vector2 moveInput = new Vector2(Input.GetAxis("Horizontal"), Input.GetAxis("Vertical"));
        bool isMoving = moveInput.magnitude != 0;

        if (isMoving)
        {
            Vector3 lookForward = new Vector3(camerArm.forward.x, 0f, camerArm.forward.z).normalized;
            Vector3 lookRight = new Vector3(camerArm.right.x, 0f, camerArm.right.z).normalized;
            Vector3 moveDir = lookForward * moveInput.y + lookRight * moveInput.x;

            player.forward = moveDir;
            if (isPressShift())
            {
                player_Ani.SetBool("isRun", true);
                currentSpeed = runSpeed;
            }
            else
            {
                player_Ani.SetBool("isRun", false);
                player_Ani.SetBool("isWalk", true);
                currentSpeed = walkSpeed;
            }

            transform.position += moveDir * Time.deltaTime * currentSpeed * skillSpeed;
        }
        else
        {
            player_Ani.SetBool("isWalk", false);
        }
    }

    private void HandleJumpInput()
    {
        if (isAttacking || isDead || isStun || isJumping) return;
        if (Input.GetKeyDown(KeyCode.Space))
        {
            CmdJump();
        }
    }

    [Command]
    private void CmdJump()
    {
        RpcJump();
    }

    [ClientRpc]
    private void RpcJump()
    {
        if (isJumping) return;

        player_Ani.SetTrigger("isJump");
        isJumping = true;
        rb.AddForce(Vector3.up * jumpForce, ForceMode.Impulse);

        StartCoroutine(ResetJump());
    }

    private IEnumerator ResetJump()
    {
        yield return new WaitForSeconds(0.1f);
        AnimatorStateInfo stateInfo = player_Ani.GetCurrentAnimatorStateInfo(0);

        if (stateInfo.IsName("Jump") && stateInfo.normalizedTime >= 0.9f)
        {
            player_Ani.SetBool("isWalk", false);
            isJumping = false;
        }
    }

    private void HandleAttackInput()
    {
        if (isJumping || isDead || isStun || isAttacking) return;
        if (Input.GetMouseButtonDown(0))
        {
            CmdAttack();
        }
    }

    [Command]
    private void CmdAttack()
    {
        RpcAttack();
    }

    [ClientRpc]
    private void RpcAttack()
    {
        if (isAttacking) return;

        colider.SetActive(true);
        player_Ani.SetTrigger("isAttack");
        isAttacking = true;

        StartCoroutine(ResetAttack());
    }

    private IEnumerator ResetAttack()
    {
        yield return new WaitForSeconds(0.9f);
        isAttacking = false;
        colider.SetActive(false);
    }

    private void HandleSkillInput()
    {
        if (isDead || isStun || Time.time < nextSkillTime) return;
        if (Input.GetKeyDown(KeyCode.E))
        {
            CmdUseSkill();
        }
    }

    [Command]
    private void CmdUseSkill()
    {
        RpcUseSkill();
        nextSkillTime = Time.time + skillCooldown;
    }

    [ClientRpc]
    private void RpcUseSkill()
    {
        switch (playerType)
        {
            case PlayerType_N.SPEED:
                StartCoroutine(SpeedUP_co());
                break;

            case PlayerType_N.SCALE:
                StartCoroutine(ScaleDown_co());
                break;
        }
    }

    [Command]
    private void CmdMove(Vector3 position, Vector3 forward)
    {
        RpcMove(position, forward);
    }

    [ClientRpc]
    private void RpcMove(Vector3 position, Vector3 forward)
    {
        transform.position = position;
        player.forward = forward;
    }

    private IEnumerator SpeedUP_co()
    {
        if (isUsingSkill) yield break;
        isUsingSkill = true;

        skillSpeed = 2f;
        yield return new WaitForSeconds(3f);
        skillSpeed = 1f;

        isUsingSkill = false;
    }

    private IEnumerator ScaleDown_co()
    {
        if (isUsingSkill) yield break;
        isUsingSkill = true;

        Vector3 originalScale = player.localScale;
        player.localScale = originalScale * 0.15f;

        yield return new WaitForSeconds(3.0f);

        player.localScale = originalScale;
        isUsingSkill = false;
    }

    public IEnumerator Stun_co()
    {
        if (isStun) yield break;
        player_Ani.SetBool("isWalk", false);
        player_Ani.SetBool("isRun", false);
        isStun = true;
        colider.SetActive(false);
        yield return new WaitForSeconds(3f);
        isStun = false;
        isAttacking = false;
    }

    private bool isPressShift()
    {
        return Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift);
    }
}
