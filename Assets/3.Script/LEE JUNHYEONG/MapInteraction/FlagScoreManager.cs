using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;
using System.Runtime.InteropServices.WindowsRuntime;
using Unity.VisualScripting;

public class FlagScoreManager : NetworkBehaviour
{
    private FlagInteraction[] flags;
    private GameManagerNetwork gameManagerNetwork;

    public override void OnStartAuthority()
    {
        this.gameObject.SetActive(true);
    }

    private void Start()
    {
        flags = new FlagInteraction[transform.childCount];

        flags = GetComponentsInChildren<FlagInteraction>();
        gameManagerNetwork = GetComponent<GameManagerNetwork>();
    }

    public void cleardCheck()
    {
        for (int i = 0; i < flags.Length; i++)
        {
            if (!flags[i].isClear)
            {
                return;
            }
        }

        Debug.Log("��� �¸� Ʈ���� Ȱ��ȭ");
        gameManagerNetwork.ShowGameOver(GameOverState.WIN_FLAG);
    }
}
