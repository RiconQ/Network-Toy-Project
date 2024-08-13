using System.Collections;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.InputSystem.Switch;
using static ParticleControl;

public enum ParticleName
{
    HIT = 0,
    SPAWN = 1,
    DIE =2
}

public class ParticleControl : MonoBehaviour
{
    /*
     * 스킬을 누르면 enum 값으로 맞는 스킬을 배열에 index로 접근하여 활성 / 비활성
     */
    [SerializeField]
    private ParticleSystem[] particleSystems; // 파티클

    [SerializeField]
    private AudioClip[] audioClips;
    private AudioSource PlayerAudio;

    private UnityAction OnParticle;

    private void Start()
    {
        PlayerAudio = GetComponent<AudioSource>();
        for (int i = 0; i < transform.childCount; i++)
        {
            particleSystems[i] = transform.GetChild(i).GetComponent<ParticleSystem>();
        }
    }


    public void StartEFFByState(ParticleName state) // 상태에 따른 이펙트
    {
            particleSystems[(int)state].Stop();
            particleSystems[(int)state].Play();
    }

    private void HitEFF(Vector3 hitPos, Vector3 hitDirection) // 맞는 효과
    {
        particleSystems[(int)ParticleName.HIT].transform.position = hitPos;

        particleSystems[(int)ParticleName.HIT].transform.LookAt(
            hitDirection, Vector3.up);

        particleSystems[(int)ParticleName.HIT].Play();
        particleSystems[(int)ParticleName.DIE].Play();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            Debug.Log("충돌 이펙트");
            StartSoundByEFFState(ParticleName.DIE);
            HitEFF(other.ClosestPoint(transform.position), other.ClosestPoint((2 * other.transform.position) - transform.position));
        }
    }

    public void StartSoundByEFFState(ParticleName state)
    {
        PlayerAudio.clip = audioClips[(int)state];
        PlayerAudio.Play();
    }
}
