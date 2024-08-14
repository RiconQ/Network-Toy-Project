using LitJson;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Threading;
using UnityEngine;
using UnityEngine.SceneManagement;
using System.IO;

public class GameManager : MonoBehaviour, IInitializable
{
    public static GameManager instance;

    [SerializeField] private  InGameTimer inGameTimer;

    MixerData defaultMixerData; // �ͼ� �⺻��
    MixerData mixerData; // �����Ǵ� �ͼ�

    private string mixerPath = Application.streamingAssetsPath + "MixerData.Json";

    public void Init()
    {
        defaultMixerData = new MixerData(40f, 40f, 40f);
        mixerData = GetMixerDataFromLocal();
    }

    #region ���� �޴��� �޼���

    public void ShowGameOver(bool isWin)
    {
        /*
         * gameOver UI ���
         */

        if (isWin)
        {
            // �¸� ����
        }

        else
        {
            // �й� ����
        }
    }

    #endregion

    #region ���� ���� �޼���
    public void SaveMixerData() // mixerData ����
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

    public MixerData GetMixerDataFromLocal() // ����� ���� ���� ��������
    {
        if (!File.Exists(mixerPath))
        {
            return defaultMixerData;
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

    #endregion
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

