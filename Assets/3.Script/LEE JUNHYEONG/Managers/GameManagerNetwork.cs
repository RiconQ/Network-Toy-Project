using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;

public class GameManagerNetwork : NetworkBehaviour
{
    /*
     * 매개 변수로 메니저에 있는 gameOverState를 갱신합니다.
     */

    [Client]
    public void ShowGameOver(GameOverState overState) // 게임 종료 시 호출
    {
        /*
         * gameOver UI 출력
         * 이벤트 호출
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
