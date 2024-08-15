using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;
public class FlagInteraction : NetworkBehaviour
{
    [SerializeField]
    private ParticleSystem getFlagEFF;

    private static Action onGetFlag;
    private FlagScoreManager flagScoreManager;

    public bool isClear { get; private set; }

    private void Start()
    {
        isClear = false;
        flagScoreManager = GetComponentInParent<FlagScoreManager>();
    }

    public override void OnStartAuthority() // 플래그 로직 추가
    {
        onGetFlag += PlayEFF;
    }

    [Client]
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            cmdGetFlagEFF();
            isClear = true;
            flagScoreManager.cleardCheck();
        }
    }

    #region EFF 네트워크 효과

    [Command]
    private void cmdGetFlagEFF()
    {
        RPCGetFlagEFF();
    }

    [ClientRpc]
    private void RPCGetFlagEFF()
    {
        onGetFlag?.Invoke();
    }

    private void PlayEFF()
    {
        getFlagEFF.Stop();
        getFlagEFF.Play();
    }

    #endregion
}
