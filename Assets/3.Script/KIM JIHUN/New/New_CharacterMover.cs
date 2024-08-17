using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;

public class New_CharacterMover : NetworkBehaviour
{
    public bool isMoveable;

    [SyncVar]
    public float speed = 5f;

    [SerializeField] private Animator animator;
    [SerializeField] private Transform cameraArm;

    public virtual void Start()
    {
        if (isOwned)
        {
            Camera cam = Camera.main;
            if (cam == null)
                Debug.Log("Camera Null");
            cam.transform.SetParent(cameraArm.transform);

            cam.transform.localPosition = new Vector3(0, 0, -4f);
            //cam.orthographicSize = 2.5f;
            PlayAnimation("Idle");

            //Build_RoomUI.Instance.UpdatePlayerCount();
        }
    }

    private void FixedUpdate()
    {
        LookAround();
        Move();
    }

    public void Move()
    {
        if (isOwned && isMoveable)
        {
            Vector2 moveInput = new Vector2(Input.GetAxis("Horizontal"), Input.GetAxis("Vertical"));
            if (moveInput.magnitude > 0)
            {
                PlayAnimation("Walk");
                bool isMoving = moveInput.magnitude != 0;

                Vector3 lookForward = new Vector3(cameraArm.transform.forward.x, 0f, cameraArm.transform.forward.z).normalized;
                Vector3 lookRight = new Vector3(cameraArm.transform.right.x, 0f, cameraArm.transform.right.z).normalized;
                Vector3 moveDir = lookForward * moveInput.y + lookRight * moveInput.x;

                transform.forward = moveDir;
                transform.position += moveDir * Time.deltaTime * speed;
                //this.parent.transform.position = transform.position;
            }
            else
            {
                PlayAnimation("Idle");
            }
        }
    }

    private void LookAround()
    {
        if (isOwned)
        {
            Vector2 mouse = new Vector2(Input.GetAxis("Mouse X"), Input.GetAxis("Mouse Y")) * 3f;
            Vector3 camAngle = cameraArm.transform.rotation.eulerAngles;
            float x = camAngle.x - mouse.y;
            if (x < 180f)
            {
                x = Mathf.Clamp(x, -1f, 70f);
            }
            else
            {
                x = Mathf.Clamp(x, 335f, 361f);
            }
            cameraArm.transform.rotation = Quaternion.Euler(x, camAngle.y + mouse.x, camAngle.z);
        }
    }

    private void PlayAnimation(string animationClip)
    {
        AnimatorStateInfo stateInfo = animator.GetCurrentAnimatorStateInfo(0);
        if (!stateInfo.IsName(animationClip))
            animator.CrossFadeInFixedTime(animationClip, 0f);
    }
}
