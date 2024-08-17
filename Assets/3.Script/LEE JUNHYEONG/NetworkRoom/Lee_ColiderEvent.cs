using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;

public class Lee_ColiderEvent : NetworkBehaviour
{
    /// <summary>
    /// 
    /// </summary>
    /// <method name="CmdHit"></method> 서버에서 플레이어 죽음 카운트를 저장 명령합니다
    /// 
    /// <method name="RPCDIncreaseKillCount"></method> 실제 서버에 있는 킬카운트 변수를 상승시킵니다.
    /// 
    /// <method name="CmdGameOverCheck"></method> 게임 오버를 체크하며 게임 오버라면 클라이언트들에게 알리는 메소드를 호출합니다.
    /// 
    /// <method name="RpcActiveDeadOver"></method> 각 클라이언트 게임메니저에 클라이언트 승패 여부를 전달합니다.
    /// 

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            Debug.Log("Player 때림");
            Player_Test_mine otherPlayer = other.GetComponentInParent<Player_Test_mine>();
            
            // 만약 죽었다면 모든 걸 return;
            //if (otherPlayer.isDead)
            //{
            //    return;
            //}

            //otherPlayer.Die();
            CmdHit();
        }

        //if (other.CompareTag("AI"))
        //{
        //    Debug.Log("AI 때림");
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
            Debug.Log("현재 킬 카운트 : " + host.currentKillCount);
        }
    }

    [Command(requiresAuthority = false)]
    public void CmdGameOverCheck()
    {
        var roomManager = NetworkRoomManager.singleton as Lee_RoomManager;

        if (roomManager.currentKillCount.Equals(roomManager.clientIndex - 1)) // 살아있는 클라이언트가 1명이라면 
        {
            RpcActiveDeadOver();
        }

        else if (roomManager.currentKillCount < 0 || roomManager.currentKillCount >
            roomManager.clientIndex - 1)
        {
            RpcActiveDeadOver();
            Debug.LogWarning("범위를 넘는 죽음");
        }

        else
        {
            Debug.Log("아직 모두 죽지 않았습니다.");
        }
    }

    [ClientRpc]
    public void RpcActiveDeadOver()
    {
        if (isLocalPlayer)
        {
            Debug.Log("이긴 플레이");
            Managers.Instance.Game.ShowGameOver(GameOverState.WIN_ALLDEAD, true);
        }

        else
        {
            Debug.Log("패배한 플레이");
            Managers.Instance.Game.ShowGameOver(GameOverState.LOOSE, false);
        }
    }
}
