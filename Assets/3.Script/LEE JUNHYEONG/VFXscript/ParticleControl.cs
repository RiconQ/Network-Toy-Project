using System;
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
    DIE = 1,
    SPEED =2,
    SCALE
}

public class ParticleControl : NetworkBehaviour
{
    /*
     * ��ų�� ������ enum ������ �´� ��ų�� �迭�� index�� �����Ͽ� Ȱ�� / ��Ȱ��
     */

    #region ����
    [SerializeField]
    private ParticleSystem[] particleSystems; // ��ƼŬ

    [SerializeField]
    private AudioClip[] audioClips;
    private AudioSource PlayerAudio;

    private static event Action<Vector3,Vector3> OnHit;
    private static event Action<ParticleName> OnSkill;
    private Collider _collider;

    #endregion

    private void Start()
    {
        _collider = GetComponent<Collider>();
    }

    public override void OnStartAuthority()
    {
        Debug.Log("���� �ο� �Ϸ�");
        OnHit += HitEFF;
        OnSkill += StartEFFByState;
    }

    #region ��ų ���� �޼���
    private void StartEFFByState(ParticleName state) // ���¿� ���� ����Ʈ
    {
        particleSystems[(int)state].Stop();
        particleSystems[(int)state].Play();
        StartSoundByEFFState(state);
    }

    public void TurnOffSpeedSkill() // ���ǵ� ����Ʈ ����
    {
        particleSystems[(int)ParticleName.SPEED].Stop();
    }

    [Client] // ��ų ������ �ش� �޼ҵ� ȣ���ϱ�
    public void ClientStartSkill(ParticleName state)
    {
        cmdStartSkill(state);
    }

    [Command(requiresAuthority = false)]
    private void cmdStartSkill(ParticleName state)
    {
        RPCHandleSkill(state);
    }

    [ClientRpc]
    private void RPCHandleSkill(ParticleName state)
    {
        OnSkill?.Invoke(state);
    }

    #endregion

    #region �´� EFF
    //*********************************************************************************************

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

        StartSoundByEFFState(ParticleName.HIT);
        StartSoundByEFFState(ParticleName.DIE);
    }

    [Client]
    private void OnTriggerEnter(Collider other)
    {
        if (other.name.Equals("Weapon"))
        {
            Debug.Log("�浹�� �±� ��� �ʿ�");
            CMDHandle(_collider.ClosestPoint(other.transform.position), other.ClosestPoint((2 * other.transform.position) - transform.position));
        }
    }

    //*********************************************************************************************
    #endregion

    public void StartSoundByEFFState(ParticleName state)
    {
        PlayerAudio.clip = audioClips[(int)state];
        PlayerAudio.Play();
    }
}
