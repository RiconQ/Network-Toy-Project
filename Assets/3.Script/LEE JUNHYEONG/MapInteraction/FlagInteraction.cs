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
         * 플레이어의 깃발 점수 올리는 로직 추가
         *//*

        if (other.CompareTag("Player"))
        {
            cmdGetFlag();
            Debug.Log("깃발 점수 상승 로직 추가 필요");
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