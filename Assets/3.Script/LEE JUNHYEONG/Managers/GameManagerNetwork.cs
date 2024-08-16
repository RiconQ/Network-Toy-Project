using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;

public class GameManagerNetwork : NetworkBehaviour
{
    /*
     * �Ű� ������ �޴����� �ִ� gameOverState�� �����մϴ�.
     */

    [Client]
    public void ShowGameOver(GameOverState overState) // ���� ���� �� ȣ��
    {
        /*
         * gameOver UI ���
         * �̺�Ʈ ȣ��
         */
    
        Debug.Log(overState);
        Managers.Instance.Game.gameOverState = overState;
        cmdShowGameOver();
    }
    
    [Command(requiresAuthority = false)]
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
