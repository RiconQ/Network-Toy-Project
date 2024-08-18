using Mirror;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum EPlayerType
{
    Alive,
    Dead
}

public class New_IngameCharacterMover : New_CharacterMover
{
    [SyncVar(hook = nameof(OnPlayerTypeChanged))]
    public EPlayerType playerType;

    public string playerName;

    private bool isJumping;

    //public BoxCollider attackCol;
    public GameObject attackCollider;

    //[SyncVar] public int netID;

    [ClientRpc]
    public void RpcTeleport(Vector3 position)
    {
        transform.position = position;
    }

    public override void Start()
    {
        base.Start();

        if (isOwned)
        {
            isMoveable = true;
            //playerName = Managers.Instance.Database.UserInfo.User_Name;
            //attackCol.enabled = false;
        }

        New_GameSystem.instance.AddPlayer(this);
    }

    public override void FixedUpdate()
    {
        if (isMoveable && playerType == EPlayerType.Alive)
        {
            base.FixedUpdate();
            if (Input.GetKey(KeyCode.Space) && attackCollider.activeSelf == false)
                Jump();
            if (Input.GetMouseButtonDown(0) && !isJumping)
                Attack();
        }
    }

    public override void Move()
    {
        if (isOwned && isMoveable)
        {
            Vector2 moveInput = new Vector2(Input.GetAxis("Horizontal"), Input.GetAxis("Vertical"));

            if (moveInput.magnitude > 0)
            {
                if (Input.GetKey(KeyCode.LeftShift))
                {
                    speed = 6f;
                    if (!isJumping)
                        PlayAnimation("Run");
                }
                else
                {
                    speed = 5f;
                    if (!isJumping)
                        PlayAnimation("Walk");
                }

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

    public void Jump()
    {
        // isJumping = true;
        // PlayAnimation("Jump");
    }

    public void Dead()
    {
        if (!isLocalPlayer) return;

        if (isOwned || isServer)
            CmdHandleDead();

        // if (!isDead)
        // {
        //     player_Ani.SetTrigger("isDead");
        //     isDead = true;
        //     Debug.Log("??");
        // }
    }

    private void OnPlayerTypeChanged(EPlayerType oldType, EPlayerType newType)
    {
        if (newType == EPlayerType.Dead)
        {
            PlayAnimation("Dead");
        }
    }

    [Command]
    public void CmdHandleDead()
    {
        Debug.Log("cmdHandleDead");
        isMoveable = false;
        playerType = EPlayerType.Dead;
        Debug.Log(playerType);
        New_GameSystem.instance.UpdateAlivePlayer();
        RpcHandleDead();


    }

    [ClientRpc]
    private void RpcHandleDead()
    {
        PlayAnimation("Dead");
    }

    public void Attack()
    {
        isMoveable = false;
        //attackCol.enabled = true;
        PlayAnimation("Attack");
        CmdActivateCollider(true);
    }

    public void SetJumpOff()
    {
        isJumping = false;
    }

    public void SetIsMovableOn()
    {
        isMoveable = true;
    }

    public void SetAttackColOff()
    {
        // attackCol.enabled = false;
    }

    // private void OnCollisionEnter(Collision other)
    // {
    //     New_IngameCharacterMover target = null;
    //     if (other.gameObject.CompareTag("Player") && !other.gameObject.GetComponent<New_IngameCharacterMover>().isLocalPlayer)
    //     {
    //         other.gameObject.GetComponent<New_IngameCharacterMover>().Dead();
    //     }
    //     //Debug.Log(other.gameObject.name);
    //     //foreach (var player in New_GameSystem.instance.GetPlayerList())
    //     //{
    //     //    if (player.netID == other.gameObject.GetComponent<New_IngameCharacterMover>().netID)
    //     //    {
    //     //        target = player;
    //     //    }
    //     //}
    //     //
    //     //if (target != null)
    //     //{
    //     //    target.Dead();
    //     //}
    // }

    [Command]
    private void CmdActivateCollider(bool isActive)
    {
        RpcActivateCollider(isActive);
    }

    [ClientRpc]
    private void RpcActivateCollider(bool isActive)
    {
        attackCollider.SetActive(isActive);
    }

    [Command]
    public void CmdDeactiveCollider()
    {
        RpcActivateCollider(false);
    }

}
