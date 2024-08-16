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
        Debug.Log($"Ŭ���� üĿ ���� : {clearCheker}");

        if (clearCheker >= 4)
        {
            Debug.Log("�¸� üĿ Ȱ��ȭ");

            ShowGameOver(GameOverState.WIN_FLAG);
        }
    }

    [Client]
    public void ShowGameOver(GameOverState overState) // ���� ���� �� ȣ��
    {
        /*
         * gameOver UI ���

         * �̺�Ʈ ȣ��
         */
        Debug.Log("���� ���� Client ����");
        cmdShowGameOver(overState);
    }

    [Command(requiresAuthority = false)]
    private void cmdShowGameOver(GameOverState overState)
    {
        Debug.Log("���� ���� CMD ����");
        RPCShowGameOver(overState);
    }

    [ClientRpc]
    private void RPCShowGameOver(GameOverState overState)
    {
        Debug.Log("���� ���� RPC ����");
        Managers.Instance.Game.ShowGameOver(overState, isLocalPlayer);
    }
}
