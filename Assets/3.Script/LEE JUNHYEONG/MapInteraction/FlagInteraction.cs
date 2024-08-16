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
            Debug.Log("깃발에 플레이어 콜라이더 Enter");
            cmdGetFlagEFF();
            isClear = true;
            flagScoreManager.cleardCheck();
        }
    }

    #region EFF 네트워크 효과

    [Command(requiresAuthority = false)]
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
