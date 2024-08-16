using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;

enum PlayerType_test
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
    [SerializeField]
    private GameObject deadPlayer;

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
    private bool isDeadPlayer = false;
    //  private bool canUseSkill = true;

    private float skillCooldown = 20.0f;  // ��ų ��Ÿ��
    private float nextSkillTime = 0f;     // ���� ��ų ��� ���� �ð�


    private Rigidbody rb;
    public GameObject colider;
    private PlayerType_test playerType;
    Animator player_Ani;

    private void Start()
    {
        if (!isLocalPlayer) return;
        player_Ani = player.GetComponent<Animator>();
        rb = player.GetComponent<Rigidbody>();
        player_Ani.SetBool("isWalk", false);
        

        int choosePlayer = Random.Range(0, 2);

        if (choosePlayer == 0) playerType = PlayerType_test.SPEED;
        else playerType = PlayerType_test.SCALE;
        Debug.Log(playerType);
    }

    private void Update()
    {
        //  if (!isLocalPlayer) return;
        //player_Ani.SetBool("isWalk", false);  // Idle
        if (isStun) return;
        LookAround();
        Jump();
        Attack();
        UseSkill();
        // if (Input.GetKeyDown(KeyCode.U)) Die();
    }

    private void FixedUpdate()  // ī�޶� ��鸲 ����..
    {
        //  if (!isLocalPlayer) return;
        Move();
    }

    private void LookAround()
    {
        if (!isLocalPlayer) return;
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

    private bool isPressShift()
    {
        if (Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift)) return true;
        else return false;

    }

    private void Move()
    {
        if (!isLocalPlayer) return;
        if (isAttacking || isDead || isStun)
        {
            //   Debug.Log($"attack: {isAttacking}  Dead:  {isDead}  Stun: {isStun}");
            return;
        }

        Vector2 moveInput = new Vector2(Input.GetAxis("Horizontal"), Input.GetAxis("Vertical"));
        bool isMoving = moveInput.magnitude != 0;   //moveInput�� ���̰� 0�̸� �̵� �Է��� ���°�
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

    private void Jump()
    {
        if (!isLocalPlayer) return;
        if (isAttacking || isDead || isStun||isDeadPlayer) return;
        if (Input.GetKeyDown(KeyCode.Space) && !isJumping)
        {
            player_Ani.SetBool("isJimp", true);
            isJumping = true;

            rb.AddForce(Vector3.up * jumpForce, ForceMode.Impulse);
        }

        AnimatorStateInfo stateInfo = player_Ani.GetCurrentAnimatorStateInfo(0);

        if (stateInfo.IsName("Jump") && stateInfo.normalizedTime >= 0.6f)
        {
            isJumping = false;
            if (Input.GetAxis("Horizontal") != 0 || Input.GetAxis("Vertical") != 0)
            {
                player_Ani.SetBool("isJimp", false);
                player_Ani.SetBool("isWalk", true);
            }
            else
            {
                player_Ani.SetBool("isJimp", false);
                // Debug.Log("�Ѿ");
            }
        }

    }
    private void Attack()
    {
        if (!isLocalPlayer) return;
        if (isJumping || isDead || isStun|| isDeadPlayer) return;

        if (Input.GetMouseButtonDown(0) && !isAttacking)
        {
            player_Ani.SetBool("isAttack", true);
            isAttacking = true;
            CmdActivateCollider(true); // ������ �ݶ��̴� Ȱ��ȭ ��û
        }

        AnimatorStateInfo state_Info = player_Ani.GetCurrentAnimatorStateInfo(0);

        if (state_Info.IsName("Attack") && state_Info.normalizedTime >= 0.6f)
        {
            isAttacking = false;
            CmdActivateCollider(false); // ������ �ݶ��̴� ��Ȱ��ȭ ��û

            if (Input.GetAxis("Horizontal") != 0 || Input.GetAxis("Vertical") != 0)
            {
                player_Ani.SetBool("isAttack", false);
                player_Ani.SetBool("isWalk", true);
            }
            else
            {
                player_Ani.SetBool("isAttack", false);
            }
        }
    }

    [Command]
    private void CmdActivateCollider(bool isActive)
    {
        RpcActivateCollider(isActive);
    }

    [ClientRpc]
    private void RpcActivateCollider(bool isActive)
    {
        colider.SetActive(isActive);
    }

    public void Die()
    {
        if (!isLocalPlayer) return;
        if (!isDead)
        {
            player_Ani.SetBool("isDead", true);
            isDead = true;
            CmdDie();

            // player ������Ʈ ��Ȱ��ȭ �� deadPlayer Ȱ��ȭ�� RpcDie���� ó��
        }
    }

    [Command]
    private void CmdDie()
    {
        RpcDie();
    }

    [ClientRpc]
    private void RpcDie()
    {
        StartCoroutine(Destroy_co());
    }

    private IEnumerator Destroy_co()
    {
        // 5�� �Ŀ� player ������Ʈ�� ��Ȱ��ȭ
        yield return new WaitForSeconds(5f);

        if (player != null)
        {
            player.gameObject.SetActive(false);
        }

        // player�� ��Ȱ��ȭ�� �Ŀ� deadPlayer�� Ȱ��ȭ
        if (isLocalPlayer && deadPlayer != null)
        {
            deadPlayer.SetActive(true);
            deadPlayer.transform.position = player.transform.position - new Vector3(0, 0, 2);
            deadPlayer.transform.rotation = player.transform.rotation;

            player = deadPlayer.transform;  // player ������ deadPlayer�� ����
            isDead = false;
            isDeadPlayer = true;
            skillSpeed = 1.7f;
        }
    }

    public void UseSkill()
    {
        if (!isLocalPlayer) return;
        if (isDead || isStun) return;
        if (Input.GetKeyDown(KeyCode.E) && Time.time >= nextSkillTime)  // ��ų ��Ÿ�� üũ
        {
            switch (playerType)
            {
                case PlayerType_test.SPEED:
                    StartCoroutine(SpeedUP_co());
                    break;

                case PlayerType_test.SCALE:
                    StartCoroutine(ScaleDown_co());
                    break;
            }
            nextSkillTime = Time.time + skillCooldown;  // ���� ��ų ��� ���� �ð� ����
            Debug.Log(nextSkillTime);
        }
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
        if (isUsingSkill) yield break;  // �̹� ��ų�� ��� ���̸� ����
        isUsingSkill = true;

        Vector3 originalScale = player.localScale;
        player.localScale = originalScale * 0.15f;

        yield return new WaitForSeconds(3.0f);

        player.localScale = originalScale;
        // Debug.Log("ũ�� ����");

        isUsingSkill = false;
    }

    //  public IEnumerator Stun_co()
    //  {
    //      if (isStun) yield break;
    //      player_Ani.SetBool("isWalk", false);
    //      player_Ani.SetBool("isRun", false);
    //      isStun = true;
    //      colider.SetActive(false);
    //      yield return new WaitForSeconds(3f);
    //      isStun = false;
    //      isAttacking = false;
    //  }

  //  [ClientRpc]
  //  public void RpcDie()
  //  {
  //      if (isDead) return;
  //
  //      player_Ani.SetTrigger("isDead");
  //      isDead = true;
  //  }

    public void RpcStun()
    {

        StartCoroutine(Stun_co());
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



}
