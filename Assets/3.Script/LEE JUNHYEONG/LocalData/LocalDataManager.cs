using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using LitJson;
using System.IO;
using System;
using JetBrains.Annotations;

public class LocalDataManager : MonoBehaviour
{
    public static LocalDataManager Instance = null;

    MixerData defaultData; // 믹서 기본값
    MixerData mixerData; // 저장되는 믹서
    ResultTimeData timeData; // 최고 기록
    private string mixerPath = Application.streamingAssetsPath + "MixerData.Json";
    private string timePath = Application.streamingAssetsPath + "TimeData.Json";

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
            DontDestroyOnLoad(gameObject);

            defaultData = new MixerData(40f, 40f, 40f);
            GetMixerDataFromLocal();
        }
    }
    public void SaveMixerData() // mixerData 저장
    {
        try
        {
            string mixerForm = "[{\"MASTER\" : \"" + mixerData.master + "\",\n" +
                "\"SFX\" : \"" + mixerData.SFX + "\",\n" +
                "\"BGM\" : \"" + mixerData.BGM + "\"}\n]";

            File.WriteAllText(mixerPath, mixerForm);
        }
        catch (Exception e)
        {
            Debug.LogException(e);
        }
    }

    public MixerData GetMixerDataFromLocal() // 저장된 볼륨 설정 가져오기
    {
        if (!File.Exists(mixerPath))
        {
            return defaultData;
        }

        string mixerdata = File.ReadAllText(mixerPath);

        JsonData jsonData = JsonMapper.ToObject(mixerdata);

        return new MixerData
            (
            float.Parse(jsonData[0]["MASTER"].ToString()),
            float.Parse(jsonData[0]["SFX"].ToString()), 
            float.Parse((jsonData[0]["BGM"]).ToString())
            );
    }




    public void SaveResult() // 게임 종료 이벤트에 등록
    {
            string newJson = JsonUtility.ToJson(timeData);
            File.WriteAllText(timePath, newJson);
    }

    public ResultTimeData GetResultTime() // 스코어 얻기
    {
        string JsonDataString = File.ReadAllText(timePath);
        ResultTimeData resultTimeData = new ResultTimeData(0f);


        if (!File.Exists(timePath) || JsonDataString.Equals(string.Empty))
        {
            return resultTimeData;
        }

        resultTimeData = JsonUtility.FromJson<ResultTimeData>(JsonDataString);

        return resultTimeData;
    }
}

[Serializable]
public class MixerData
{
    public float SFX { get; private set; }

    public float BGM { get; private set; }

    public float master { get; private set; }

    public MixerData(float _sfx, float _bgm, float _master)
    {
        SFX = _sfx;
        BGM = _bgm;
        master = _master;
    }
}

[Serializable]
public class ResultTimeData
{
    public float finalTime { get; private set; }

    public ResultTimeData(float finalTime)
    {
        this.finalTime = finalTime;
    }
}
