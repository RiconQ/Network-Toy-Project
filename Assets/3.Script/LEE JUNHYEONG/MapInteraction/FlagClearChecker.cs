using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;
using System.Runtime.InteropServices.WindowsRuntime;
using Unity.VisualScripting;
using UnityEngine.SocialPlatforms;

public class FlagClearChecker : NetworkBehaviour
{
    private int clearCheker = 0;

    public override void OnStartAuthority()
    {
        clearCheker = 0;
    }

    [Server]
    public void cleardCheck()
    {
            RpcCleardCheck();
    }

    [ClientRpc]
    public void RpcCleardCheck()
    {

        if (isLocalPlayer)
        clearCheker += 1;
        Debug.Log($"클리어 체커 변수 : {clearCheker}");

        if (clearCheker >= 4)
        {
            Debug.Log("승리 체커 활성화");

            ShowGameOver(GameOverState.WIN_FLAG);
        }
    }

    [Client]
    public void ShowGameOver(GameOverState overState) // 게임 종료 시 호출
    {
        /*
         * gameOver UI 출력

         * 이벤트 호출
         */
        Debug.Log("게임 오버 Client 출현");
        cmdShowGameOver(overState);
    }

    [Command(requiresAuthority = false)]
    private void cmdShowGameOver(GameOverState overState)
    {
        Debug.Log("게임 오버 CMD 출현");
        RPCShowGameOver(overState);
    }

    [ClientRpc]
    private void RPCShowGameOver(GameOverState overState)
    {
        Debug.Log("게임 오버 RPC 출현");
        Managers.Instance.Game.ShowGameOver(overState, isLocalPlayer);
    }
}
