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
    // BGM / 효과음 오디오 소스

    public Dictionary<string, AudioClip> Diction_audioClips = new Dictionary<string, AudioClip>();
    //EFF 사운드 Dictionary
    //key는 ClipName

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

        // 효과음 딕셔너리 비우기
        Diction_audioClips.Clear();
    }

    public void PlayBGM(AudioClip audioClip, Sound type) // BGM 혹은 효과음(ex : 버튼음,)을 재생합니다.
    {
        if (audioClip == null)
        {
            Debug.Log("할당되지 않은 오디오 클립 재생");
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
