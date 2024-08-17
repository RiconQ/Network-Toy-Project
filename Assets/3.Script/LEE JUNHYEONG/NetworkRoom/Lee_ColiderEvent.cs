using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;

public class Lee_ColiderEvent : NetworkBehaviour
{
    /// <summary>
    /// 
    /// </summary>
    /// <method name="CmdHit"></method> �������� �÷��̾� ���� ī��Ʈ�� ���� ����մϴ�
    /// 
    /// <method name="RPCDIncreaseKillCount"></method> ���� ������ �ִ� ųī��Ʈ ������ ��½�ŵ�ϴ�.
    /// 
    /// <method name="CmdGameOverCheck"></method> ���� ������ üũ�ϸ� ���� ������� Ŭ���̾�Ʈ�鿡�� �˸��� �޼ҵ带 ȣ���մϴ�.
    /// 
    /// <method name="RpcActiveDeadOver"></method> �� Ŭ���̾�Ʈ ���Ӹ޴����� Ŭ���̾�Ʈ ���� ���θ� �����մϴ�.
    /// 

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            Debug.Log("Player ����");
            Player_Test_mine otherPlayer = other.GetComponentInParent<Player_Test_mine>();
            
            // ���� �׾��ٸ� ��� �� return;
            //if (otherPlayer.isDead)
            //{
            //    return;
            //}

            //otherPlayer.Die();
            CmdHit();
        }

        //if (other.CompareTag("AI"))
        //{
        //    Debug.Log("AI ����");
        //    Player_Test_mine player = GetComponentInParent<Player_Test_mine>();
        //    player.StartCoroutine(player.Stun_co());
        //
        //    AI ai = other.GetComponentInParent<AI>();
        //    ai.Die();
        //}
    }


    [Command(requiresAuthority = false)]
    public void CmdHit()
    {
        RPCDIncreaseKillCount();
    }

    [ClientRpc]
    public void RPCDIncreaseKillCount()
    {
        if (isServer)
        {
            var host = NetworkRoomManager.singleton as Lee_RoomManager;
            host.currentKillCount += 1;
            CmdGameOverCheck();
            Debug.Log("���� ų ī��Ʈ : " + host.currentKillCount);
        }
    }

    [Command(requiresAuthority = false)]
    public void CmdGameOverCheck()
    {
        var roomManager = NetworkRoomManager.singleton as Lee_RoomManager;

        if (roomManager.currentKillCount.Equals(roomManager.clientIndex - 1)) // ����ִ� Ŭ���̾�Ʈ�� 1���̶�� 
        {
            RpcActiveDeadOver();
        }

        else if (roomManager.currentKillCount < 0 || roomManager.currentKillCount >
            roomManager.clientIndex - 1)
        {
            RpcActiveDeadOver();
            Debug.LogWarning("������ �Ѵ� ����");
        }

        else
        {
            Debug.Log("���� ��� ���� �ʾҽ��ϴ�.");
        }
    }

    [ClientRpc]
    public void RpcActiveDeadOver()
    {
        if (isLocalPlayer)
        {
            Debug.Log("�̱� �÷���");
            Managers.Instance.Game.ShowGameOver(GameOverState.WIN_ALLDEAD, true);
        }

        else
        {
            Debug.Log("�й��� �÷���");
            Managers.Instance.Game.ShowGameOver(GameOverState.LOOSE, false);
        }
    }
}
