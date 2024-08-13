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
     * 스킬을 누르면 enum 값으로 맞는 스킬을 배열에 index로 접근하여 활성 / 비활성
     *//*
    [SerializeField]
    private ParticleSystem[] particleSystems; // 파티클

    [SerializeField]
    private AudioClip[] audioClips;
    private AudioSource PlayerAudio;

    private static event Action<Vector3,Vector3> OnHit;
    public override void OnStartAuthority()
    {
        Debug.Log("권한 부여 완료");
        OnHit += HitEFF;
    }

    public void StartEFFByState(ParticleName state) // 상태에 따른 이펙트
    {
            particleSystems[(int)state].Stop();
            particleSystems[(int)state].Play();
    }

    [Command(requiresAuthority = false)]
    private void CMDHandle(Vector3 hitPos, Vector3 hitDirection)
    {
        Debug.Log("커맨드");
        RPCHandleHit(hitPos, hitDirection);
    }

    [ClientRpc]
    private void RPCHandleHit(Vector3 hitPos, Vector3 hitDirection)
    {
        Debug.Log("RPC 핸들러");
        OnHit?.Invoke(hitPos, hitDirection);
    }

    private void HitEFF(Vector3 hitPos, Vector3 hitDirection) // 맞는 효과
    {
        Debug.Log("이벤트 실행");
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
            Debug.Log("충돌");
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