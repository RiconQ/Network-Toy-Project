using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;
using System.Runtime.InteropServices.WindowsRuntime;

public class FlagScoreManager : MonoBehaviour
{
    private FlagInteraction[] flags;

    private void Start()
    {
        flags = new FlagInteraction[transform.childCount];

        flags = GetComponentsInChildren<FlagInteraction>();
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

        Managers.Instance.gameManager.ShowGameOver();
    }
}
