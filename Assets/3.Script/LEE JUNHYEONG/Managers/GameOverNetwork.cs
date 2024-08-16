using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;

public class GameOverNetwork : NetworkBehaviour
{
    [Client]
    public void ShowGameOver(GameOverState overState) // 게임 종료 시 호출
    {
        /*
         * gameOver UI 출력
         * 이벤트 호출
         */
        Managers.Instance.Game.gameOverState = overState;
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
        Managers.Instance.Game.ShowGameOver();
    }
}
