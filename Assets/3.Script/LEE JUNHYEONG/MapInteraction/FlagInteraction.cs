using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;
public class FlagInteraction : NetworkBehaviour
{
    [SerializeField]private ParticleSystem getFlagEFF;
    [SerializeField]private FlagScoreManager flagScoreManager;

    private static Action onGetFlag;

    public bool isClear { get; private set; }

    private void Start()
    {
        isClear = false;
        flagScoreManager = GetComponentInParent<FlagScoreManager>();
    }

    public override void OnStartAuthority() // �÷��� ���� �߰�
    {
        onGetFlag += PlayEFF;
    }

    
    private void OnTriggerEnter(Collider other)
    {
        if (!isServer)
        {
            return;
        }

        if (NetworkServer.active)
        {
            if (other.CompareTag("Player"))
            {
                Debug.Log("��߿� �÷��̾� �ݶ��̴� Enter");
                cmdGetFlagEFF();
                isClear = true;
                flagScoreManager.cleardCheck();
            }
        }
    }

    #region EFF ��Ʈ��ũ ȿ��
    [Command (requiresAuthority = false)]
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
