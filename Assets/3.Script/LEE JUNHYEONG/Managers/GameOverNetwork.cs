using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;

public class GameOverNetwork : NetworkBehaviour
{
    [Client]
    public void ShowGameOver(GameOverState overState) // ���� ���� �� ȣ��
    {
        /*
         * gameOver UI ���
         * �̺�Ʈ ȣ��
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
