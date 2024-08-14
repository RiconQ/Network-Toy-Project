using LitJson;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Threading;
using UnityEngine;
using UnityEngine.SceneManagement;
using System.IO;
using Unity.VisualScripting;
using UnityEngine.Events;
using UnityEditor;

public class GameManager : MonoBehaviour, IInitializable
{
    [SerializeField] private  InGameTimer inGameTimer; // Ÿ�̸� ����
    [SerializeField] private GameOverNetwork gameOverNetwork; // ���� ���� ��Ʈ��ũ

    MixerData defaultMixerData; // �ͼ� �⺻��
    MixerData mixerData; // �����Ǵ� �ͼ�
    private string mixerPath = Application.streamingAssetsPath + "MixerData.Json"; // �ͼ� ������ ���� ���

    public event Action gameOverEvents; // ���� ���� �̺�Ʈ ����
    public bool isPlayerWin = false; // �÷��̾� �¸� ���� ����

    public void Init()
    {
        defaultMixerData = new MixerData(40f, 40f, 40f);
        mixerData = GetMixerDataFromLocal();
        SceneManager.sceneLoaded += InitInGame;
        SceneManager.sceneLoaded += DestroyInGame;
    }

    #region ���� �޴��� �޼���
    private void InitInGame(Scene scene, LoadSceneMode mode) // �ΰ��� ���� �� �ʱ�ȭ�� �͵�
    {
        if (scene.buildIndex.Equals((int)SceneName.LEVEL))
        {
            isPlayerWin = false;
            inGameTimer = Instantiate(new GameObject(), transform).AddComponent<InGameTimer>();
            gameOverNetwork = Instantiate(new GameObject(), transform).AddComponent<GameOverNetwork>();
        }
    }

    private void DestroyInGame(Scene scene, LoadSceneMode mode) // �ΰ��� ���� �� ���� Ÿ�̸� �ı� �÷��̾� �¸� false
    {
        if (inGameTimer != null)
        {
            Destroy(inGameTimer.gameObject);
            Destroy(gameOverNetwork.gameObject);
        }

        isPlayerWin = false;
    }

    public void ShowGameOver() // ���� ���� �� ȣ��
    {
        /*
         * gameOver UI ���
         * �̺�Ʈ ȣ��
         */
        gameOverEvents?.Invoke();
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

#region ���� DB format
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
#endregion

