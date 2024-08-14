using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;

enum PlayerType
{
    SPEED,
    SCALE
};

public class PlayerMove : MonoBehaviour
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
  //  private bool canUseSkill = true;

    private float skillCooldown = 20.0f;  // 스킬 쿨타임
    private float nextSkillTime = 0f;     // 다음 스킬 사용 가능 시간


    private Rigidbody rb;
    public GameObject colider;
    private PlayerType playerType;
    Animator player_Ani;

    private void Start()
    {
        player_Ani = player.GetComponent<Animator>();
        rb = player.GetComponent<Rigidbody>();
        player_Ani.SetBool("isWalk", false);

        int choosePlayer = Random.Range(0, 2);

        if (choosePlayer == 0) playerType = PlayerType.SPEED;
        else playerType = PlayerType.SCALE;
        Debug.Log(playerType);
    }

    private void Update()
    {
        //player_Ani.SetBool("isWalk", false);  // Idle
        if (isStun) return;
        LookAround();
        Jump();
        Attack();
        UseSkill();
        // if (Input.GetKeyDown(KeyCode.U)) Die();
    }

    private void FixedUpdate()  // 카메라 흔들림 방지..
    {
        Move();
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

    private bool isPressShift()
    {
        if (Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift)) return true;
        else return false;

    }

    private void Move()
    {
        if (isAttacking || isDead || isStun)
        {
        //   Debug.Log($"attack: {isAttacking}  Dead:  {isDead}  Stun: {isStun}");
            return;
        }

        Vector2 moveInput = new Vector2(Input.GetAxis("Horizontal"), Input.GetAxis("Vertical"));
        bool isMoving = moveInput.magnitude != 0;   //moveInput의 길이가 0이면 이동 입력이 없는것
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
        if (isAttacking || isDead || isStun) return;
        if (Input.GetKeyDown(KeyCode.Space) && !isJumping)
        {
            player_Ani.SetTrigger("isJump");
            isJumping = true;

            rb.AddForce(Vector3.up * jumpForce, ForceMode.Impulse);
        }

        AnimatorStateInfo stateInfo = player_Ani.GetCurrentAnimatorStateInfo(0);

        // 만약 현재 점프 애니메이션이 재생 중이고, 애니메이션이 거의 끝난 상태라면
        if (stateInfo.IsName("Jump") && stateInfo.normalizedTime >= 0.9f)
        {
            //   Debug.Log("끝남");
            player_Ani.SetBool("isWalk", false);
            isJumping = false;
            // player_Ani.SetTrigger("isIdle");  // Idle 상태로 전환
        }
    }

    private void Attack()
    {
        if (isJumping || isDead || isStun) return;
        if (Input.GetMouseButtonDown(0) && !isAttacking)
        {
            colider.SetActive(true);
            player_Ani.SetTrigger("isAttack");
            isAttacking = true;
        }

        AnimatorStateInfo stateInfo = player_Ani.GetCurrentAnimatorStateInfo(0);

        if (stateInfo.IsName("Attack") && stateInfo.normalizedTime >= 0.9f)
        {
            isAttacking = false;
            colider.SetActive(false);
            if (Input.GetAxis("Horizontal") != 0 || Input.GetAxis("Vertical") != 0)
            {
                player_Ani.SetBool("isWalk", true);
            }
            else
            {
                player_Ani.SetBool("isWalk", false);
                // Debug.Log("넘어감");
            }
        }
    }

    public void Die()
    {
        if (!isDead)
        {
            player_Ani.SetTrigger("isDead");
            isDead = true;
        }
    }

    public void UseSkill()
    {
        if (isDead || isStun) return;
        if (Input.GetKeyDown(KeyCode.E) && Time.time >= nextSkillTime)  // 스킬 쿨타임 체크
        {
            switch (playerType)
            {
                case PlayerType.SPEED:
                    StartCoroutine(SpeedUP_co());
                    break;

                case PlayerType.SCALE:
                    StartCoroutine(ScaleDown_co());
                    break;
            }
            nextSkillTime = Time.time + skillCooldown;  // 다음 스킬 사용 가능 시간 설정
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
        if (isUsingSkill) yield break;  // 이미 스킬을 사용 중이면 종료
        isUsingSkill = true;

        Vector3 originalScale = player.localScale;
        player.localScale = originalScale * 0.15f;

        yield return new WaitForSeconds(3.0f);

        player.localScale = originalScale;
        // Debug.Log("크기 복귀");

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

    //  private void SpeedUp()
    //  {
    //      currentTime += Time.deltaTime;
    //      if(currentTime<3.0f)
    //      {
    //          skillSpeed = 10f;
    //      Debug.Log("스피드업");
    //      }
    //      else
    //      {
    //          Debug.Log("복귀");
    //          skillSpeed = 1f;
    //          currentTime = 0;
    //      }
    //  }


}
