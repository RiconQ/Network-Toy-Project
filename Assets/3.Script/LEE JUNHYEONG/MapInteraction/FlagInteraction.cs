/*using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;
public class FlagInteraction : NetworkBehaviour
{
    [SerializeField]
    private ParticleSystem getFlagEFF;

    private static Action onGetFlag;

    public override void OnStartAuthority()
    {
        onGetFlag += PlayEFF;
    }

    [Client]
    private void OnTriggerEnter(Collider other)
    {
        /*
         * �÷��̾��� ��� ���� �ø��� ���� �߰�
         *//*

        if (other.CompareTag("Player"))
        {
            cmdGetFlag();
            Debug.Log("��� ���� ��� ���� �߰� �ʿ�");
        }
    }

    [Command]
    private void cmdGetFlag()
    {
        RPCGetFlag();
    }

    [ClientRpc]
    private void RPCGetFlag()
    {
        onGetFlag?.Invoke();
    }

    private void PlayEFF()
    {
        getFlagEFF.Stop();
        getFlagEFF.Play();
    }
}
*/