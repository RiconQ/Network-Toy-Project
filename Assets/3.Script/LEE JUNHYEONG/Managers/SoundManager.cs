using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

public enum Sound
{
    BGM,
    EFF,
    Amount
}

public class SoundManager : MonoBehaviour, IInitializable
{
    public AudioSource[] AudioSources = new AudioSource[(int)Sound.Amount];
    // BGM / ȿ���� ����� �ҽ�

    public Dictionary<string, AudioClip> Diction_audioClips = new Dictionary<string, AudioClip>();
    //EFF ���� Dictionary
    //key�� ClipName

    public void Init()
    {
        string[] soundType = Enum.GetNames(typeof(Sound));

        for(int i = 0; i < AudioSources.Length; i++)
        {

            GameObject g = Instantiate(new GameObject(name = soundType[i]));
            AudioSources[i] = g.AddComponent<AudioSource>();

            if(i.Equals(Sound.BGM)) 
            AudioSources[i].loop = true;

            else
            AudioSources[i].loop = false;

            g.transform.parent = transform;
        }

        foreach (AudioClip audioClip in Resources.LoadAll<AudioClip>("LEE JUNHYENG/Sounds/BGM"))
        {
            Diction_audioClips.Add(audioClip.name, audioClip);
        }
    }

    public void Clear()
    {
        for (int i = 0; i < AudioSources.Length; i++)
        {
        AudioSources[i].clip = null;
        AudioSources[i].Stop();
        }

        // ȿ���� ��ųʸ� ����
        Diction_audioClips.Clear();
    }

    public void PlayBGM(AudioClip audioClip, Sound type) // BGM Ȥ�� ȿ����(ex : ��ư��,)�� ����մϴ�.
    {
        if (audioClip == null)
        {
            Debug.Log("�Ҵ���� ���� ����� Ŭ�� ���");
            return;
        }

        if (type.Equals(Sound.BGM))
        {
            if (AudioSources[(int)type].isPlaying)
            AudioSources[(int)type].Stop();

            AudioSources[(int)type].clip = audioClip;
            AudioSources[(int)type].Play();
        }
        
        else
            AudioSources[(int)type].PlayOneShot(audioClip);
    }
}
