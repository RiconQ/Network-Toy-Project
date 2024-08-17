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
                //        Debug.Log("�ش� ����� �̹� ȹ���߽��ϴ�.");
                //        return;
                //    }
                //}

                //gotPlayers.Add(otherID);
                Debug.Log($"��߿� �÷��̾� �ݶ��̴� Enter -> Ŭ�� �̸� : {other.name}");
                other.GetComponent<FlagClearChecker>().cleardCheck();
                cmdGetFlagEFF();
            }
        }
    }



    #region ��� EFF
    [Server]
    private void cmdGetFlagEFF()
    {
        RPCGetFlagEFF();
    }

    [ClientRpc]
    private void RPCGetFlagEFF()
    {
        getFlagEFF.Stop();
        getFlagEFF.Play();
    }

    #endregion
}
