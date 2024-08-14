using System.Collections;
using System.Collections.Generic;
using UnityEngine;

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
    private float skillSpeed=1;
    private float jumpForce=4f;
    private bool isJumping = false;
    private bool isAttacking = false;
    private bool isDead = false;
    private float currentTime = 0;

    private Rigidbody rb;
    public GameObject colider;
    private PlayerType playerType;

    Animator player_Ani;

    private void Start()
    {
        player_Ani = player.GetComponent<Animator>();
        rb = player.GetComponent<Rigidbody>();


        player_Ani.SetBool("isWalk", false);
    }

    private void Update()
    {
        //player_Ani.SetBool("isWalk", false);  // Idle
        LookAround();
        Jump();
        Attack();
        UseSkill();
        Debug.Log(currentSpeed);
       // if (Input.GetKeyDown(KeyCode.U)) Die();
    }

    private void FixedUpdate()
    {
        Move();
    }

    private bool isPressShift()
    {
        if (Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift)) return true;
        else return false;
       
    }
    private void Move()
    {
        if (isAttacking||isDead) return;
        Vector2 moveInput = new Vector2(Input.GetAxis("Horizontal"), Input.GetAxis("Vertical"));
        bool isMoving = moveInput.magnitude != 0;   //moveInput�� ���̰� 0�̸� �̵� �Է��� ���°�
       if(isMoving)
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
            transform.position += moveDir * Time.deltaTime * currentSpeed*skillSpeed;
        }

       else
        {
            player_Ani.SetBool("isWalk", false);
        }

    }
    private void LookAround()
    {
        Vector2 mouse = new Vector2(Input.GetAxis("Mouse X"), Input.GetAxis("Mouse Y"));
        Vector3 camAngle = camerArm.rotation.eulerAngles;
        float x = camAngle.x - mouse.y;
        if(x<180f)
        {
            x = Mathf.Clamp(x, -1f, 70f);
        }
        else
        {
            x = Mathf.Clamp(x, 335f, 361f);
        }
        camerArm.rotation = Quaternion.Euler(x, camAngle.y + mouse.x, camAngle.z);
       
    }

    private void Jump()
    {
        if (isAttacking||isDead) return;
        if(Input.GetKeyDown(KeyCode.Space)&&!isJumping)
        {
            player_Ani.SetTrigger("isJump");
            isJumping = true;

            rb.AddForce(Vector3.up * jumpForce, ForceMode.Impulse);
        }

        AnimatorStateInfo stateInfo = player_Ani.GetCurrentAnimatorStateInfo(0);

        // ���� ���� ���� �ִϸ��̼��� ��� ���̰�, �ִϸ��̼��� ���� ���� ���¶��
        if (stateInfo.IsName("Jump") && stateInfo.normalizedTime >= 0.9f)
        {
         //   Debug.Log("����");
           player_Ani.SetBool("isWalk", false);
            isJumping = false;
         // player_Ani.SetTrigger("isIdle");  // Idle ���·� ��ȯ
        }
    }

    private void Attack()
    {
        if (isJumping||isDead) return;
        if (Input.GetMouseButtonDown(0)&&!isAttacking)
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
               // Debug.Log("�Ѿ");
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
        if (Input.GetKeyDown(KeyCode.E))
        {
            switch (playerType)
            {
                case PlayerType.SPEED:
                    StartCoroutine(SpeedUP_co());
                    break;

                case PlayerType.SCALE:
                    break;

            }
        }
    }


    private IEnumerator SpeedUP_co()
    {
        skillSpeed = 10f;
        yield return new WaitForSeconds(3f);
        skillSpeed = 1f;

    }
  //  private void SpeedUp()
  //  {
  //      currentTime += Time.deltaTime;
  //      if(currentTime<3.0f)
  //      {
  //          skillSpeed = 10f;
  //      Debug.Log("���ǵ��");
  //      }
  //      else
  //      {
  //          Debug.Log("����");
  //          skillSpeed = 1f;
  //          currentTime = 0;
  //      }
  //  }

   
}
