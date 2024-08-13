using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMove : MonoBehaviour
{
    [SerializeField]
    private Transform player;
    [SerializeField]
    private Transform camerArm;

    private float moveSpeed = 5f;
    private float jumpForce=4f;
    private bool isJumping = false;
    private bool isAttacking = false;

    private Rigidbody rb;
    private ColiderEvent col;

    Animator player_Ani;

    private void Start()
    {
        player_Ani = player.GetComponent<Animator>();
        rb = player.GetComponent<Rigidbody>();
        col = player.GetComponentInChildren<ColiderEvent>();


        player_Ani.SetBool("isWalk", false);
    }

    private void Update()
    {
        //player_Ani.SetBool("isWalk", false);  // Idle
        LookAround();
        Jump();
        Attack();
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
        if (isAttacking) return;
        Vector2 moveInput = new Vector2(Input.GetAxis("Horizontal"), Input.GetAxis("Vertical"));
        bool isMoving = moveInput.magnitude != 0;   //moveInput의 길이가 0이면 이동 입력이 없는것
       if(isMoving)
        {
            Vector3 lookForward = new Vector3(camerArm.forward.x, 0f, camerArm.forward.z).normalized;
            Vector3 lookRight = new Vector3(camerArm.right.x, 0f, camerArm.right.z).normalized;
            Vector3 moveDir = lookForward * moveInput.y + lookRight * moveInput.x;

            player.forward = moveDir;
            if (isPressShift())
            {
                player_Ani.SetBool("isRun", true);
                moveSpeed = 8f;
            }
            else
            {
                player_Ani.SetBool("isRun", false);
                 player_Ani.SetBool("isWalk", true);
                moveSpeed = 5f;
            }
            transform.position += moveDir * Time.deltaTime * moveSpeed;
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
        if (isAttacking) return;
        if(Input.GetKeyDown(KeyCode.Space)&&!isJumping)
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
        if (isJumping) return;
        if (Input.GetMouseButtonDown(0)&&!isAttacking)
        {
            col.EnableColider();
            player_Ani.SetTrigger("isAttack");
            isAttacking = true;
        }

        AnimatorStateInfo stateInfo = player_Ani.GetCurrentAnimatorStateInfo(0);

        if (stateInfo.IsName("Attack") && stateInfo.normalizedTime >= 0.9f)
        {
            isAttacking = false;
            if (Input.GetAxis("Horizontal") != 0 || Input.GetAxis("Vertical") != 0)
            {
                player_Ani.SetBool("isWalk", true); 
            }
            else
            {
                player_Ani.SetBool("isWalk", false);
                Debug.Log("넘어감");
            }
        }
    }

   
}
