/*using System;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.InputSystem.Switch;
using static ParticleControl;
using Mirror;

public enum ParticleName
{
    HIT = 0,
    SPAWN = 1,
    DIE =2
}

public class ParticleControl : NetworkBehaviour
{
    /*
     * ��ų�� ������ enum ������ �´� ��ų�� �迭�� index�� �����Ͽ� Ȱ�� / ��Ȱ��
     *//*
    [SerializeField]
    private ParticleSystem[] particleSystems; // ��ƼŬ

    [SerializeField]
    private AudioClip[] audioClips;
    private AudioSource PlayerAudio;

    private static event Action<Vector3,Vector3> OnHit;
    public override void OnStartAuthority()
    {
        Debug.Log("���� �ο� �Ϸ�");
        OnHit += HitEFF;
    }

    public void StartEFFByState(ParticleName state) // ���¿� ���� ����Ʈ
    {
            particleSystems[(int)state].Stop();
            particleSystems[(int)state].Play();
    }

    [Command(requiresAuthority = false)]
    private void CMDHandle(Vector3 hitPos, Vector3 hitDirection)
    {
        Debug.Log("Ŀ�ǵ�");
        RPCHandleHit(hitPos, hitDirection);
    }

    [ClientRpc]
    private void RPCHandleHit(Vector3 hitPos, Vector3 hitDirection)
    {
        Debug.Log("RPC �ڵ鷯");
        OnHit?.Invoke(hitPos, hitDirection);
    }

    private void HitEFF(Vector3 hitPos, Vector3 hitDirection) // �´� ȿ��
    {
        Debug.Log("�̺�Ʈ ����");
        particleSystems[(int)ParticleName.HIT].transform.position = hitPos;

        particleSystems[(int)ParticleName.HIT].transform.LookAt(
            hitDirection, Vector3.up);


        particleSystems[(int)ParticleName.HIT].Stop();
        particleSystems[(int)ParticleName.HIT].Play();
        particleSystems[(int)ParticleName.DIE].Stop();
        particleSystems[(int)ParticleName.DIE].Play();
    }

    [Client]
    private void OnTriggerEnter(Collider other)
    {
        if (other.name.Equals("Weapon"))
        {
            Debug.Log("�浹");
            //StartSoundByEFFState(ParticleName.DIE);

            CMDHandle(other.ClosestPoint(transform.position), other.ClosestPoint((2 * other.transform.position) - transform.position));
        }
    }

    public void StartSoundByEFFState(ParticleName state)
    {
        PlayerAudio.clip = audioClips[(int)state];
        PlayerAudio.Play();
    }
}
*/