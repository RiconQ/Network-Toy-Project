using System.Collections;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using UnityEngine;
using static ParticleControl;

public enum ParticleName
{
    SPAWN = 0,
    HIT = 1,
    DIE =2
}

public class ParticleControl : MonoBehaviour
{
    /*
     * ��ų�� ������ enum ������ �´� ��ų�� �迭�� index�� �����Ͽ� Ȱ�� / ��Ȱ��
     */
    [SerializeField] private GameObject[] m_Particles_Prefab;
    private ParticleSystem[] particleSystems;

    private void Start()
    {
        CreateAllParticles();
    }

    private void Update()
    {
        //if (Input.GetMouseButtonDown(0))
        //{
        //    ActSkill((Skill)Random.Range(0, 6));
        //}
    }

    private void CreateAllParticles()
    {
        particleSystems = new ParticleSystem[m_Particles_Prefab.Length];

        for (int i = 0; i < m_Particles_Prefab.Length; i++)
        {
            particleSystems[i] = Instantiate(m_Particles_Prefab[i],transform).GetComponent<ParticleSystem>();
            particleSystems[i].gameObject.SetActive(false);
        }
    }

    public void ActSkill(ParticleName skill)
    {
        particleSystems[(int)skill].gameObject.SetActive(true);

        particleSystems[(int)skill].Play();
    }
}
