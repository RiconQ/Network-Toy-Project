using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;
using Unity.VisualScripting;
public class FlagInteraction : NetworkBehaviour
{
    [SerializeField]private ParticleSystem getFlagEFF;
    [SerializeField] private AudioClip getFlagSound;
    private List<uint> gotPlayers;
    private AudioSource AudioSource;

    private void Start()
    {
        gotPlayers = new List<uint>();
        AudioSource = GetComponent<AudioSource>();
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
                //uint otherID = other.GetComponentInParent<NetworkIdentity>().netId;
                //
                //foreach (uint playerID in gotPlayers)
                //{
                //    if (otherID.Equals(playerID))
                //    {
                //        Debug.Log("해당 깃발을 이미 획득했습니다.");
                //        return;
                //    }
                //}

                //gotPlayers.Add(otherID);
                Debug.Log($"깃발에 플레이어 콜라이더 Enter -> 클론 이름 : {other.name}");
                other.GetComponent<FlagClearChecker>().cleardCheck();
                cmdGetFlagEFF();
            }
        }
    }



    #region EFF 네트워크 효과
    [Server]
    private void cmdGetFlagEFF()
    {
        Debug.Log("Server 되었는가?");
        RPCGetFlagEFF();
    }

    [ClientRpc]
    private void RPCGetFlagEFF()
    {
        Debug.Log("RPC 되었는가?");
        getFlagEFF.Stop();
        getFlagEFF.Play();
    }

    #endregion
}
