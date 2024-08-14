using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;

public class GameOverNetwork : NetworkBehaviour
{
    [Client]
    public void ShowGameOver() // 게임 종료 시 호출
    {
        /*
         * gameOver UI 출력
         * 이벤트 호출
         */
        cmdShowGameOver();
    }

    [Command]
    private void cmdShowGameOver()
    {
        RPCShowGameOver();
    }

    [ClientRpc]
    private void RPCShowGameOver()
    {
        GetComponentInParent<GameManager>().ShowGameOver();
    }
}
