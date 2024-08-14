using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;

public class GameOverNetwork : NetworkBehaviour
{
    [Client]
    public void ShowGameOver() // ���� ���� �� ȣ��
    {
        /*
         * gameOver UI ���
         * �̺�Ʈ ȣ��
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
