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
     * 스킬을 누르면 enum 값으로 맞는 스킬을 배열에 index로 접근하여 활성 / 비활성
     */

    #region 변수
    [SerializeField]
    private ParticleSystem[] particleSystems; // 파티클

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
        Debug.Log("권한 부여 완료");
        OnHit += HitEFF;
        OnSkill += StartEFFByState;
    }

    #region 스킬 시전 메서드
    private void StartEFFByState(ParticleName state) // 상태에 따른 이펙트
    {
        particleSystems[(int)state].Stop();
        particleSystems[(int)state].Play();
        StartSoundByEFFState(state);
    }

    public void TurnOffSpeedSkill() // 스피드 이펙트 끄기
    {
        particleSystems[(int)ParticleName.SPEED].Stop();
    }

    [Client] // 스킬 시전시 해당 메소드 호출하기
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

    #region 맞는 EFF
    //*********************************************************************************************

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

        StartSoundByEFFState(ParticleName.HIT);
        StartSoundByEFFState(ParticleName.DIE);
    }

    [Client]
    private void OnTriggerEnter(Collider other)
    {
        if (other.name.Equals("Weapon"))
        {
            Debug.Log("충돌용 태그 사용 필요");
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
