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
using System.Net.Sockets;
using System.Net;
using Mirror;
using UnityEditor.SceneManagement;

public enum GameOverState
{
    LOSE,
    WIN_FLAG,
    WIN_ALLDEAD
};

public class GameManager : MonoBehaviour, IInitializable
{
    [SerializeField] private  InGameTimer inGameTimer; // Ÿ�̸� ����
    [SerializeField] public GameManagerNetwork gameManagerNetwork; // ��Ʈ��ũ ���� �޴���
    public GameOverState gameOverState = GameOverState.LOSE; // ���� ���� ���� ����

    public MixerData defaultMixerData { get; private set; } // �ͼ� �⺻��
    public MixerData mixerData; // �����Ǵ� �ͼ�

    private string mixerPath = Application.streamingAssetsPath + "MixerData.Json"; // �ͼ� ������ ���� ���

    public event Action<GameOverState> gameOverEvents; // ���� ���� �̺�Ʈ ����

    public void Init()
    {
        defaultMixerData = new MixerData(40f, 40f, 40f);
        mixerData = GetMixerDataFromLocal();
        SceneManager.sceneLoaded += InitInGame;
        SceneManager.sceneLoaded += DestroyInGame;
        gameOverState = GameOverState.LOSE;
    }

    #region ���� �޴��� �޼���
    private void InitInGame(Scene scene, LoadSceneMode mode) // �ΰ��� ���� �� �ʱ�ȭ�� �͵�
    {
        //if (scene.buildIndex.Equals((int)SceneName.LEVEL))
        {
            Debug.Log("Ÿ�̸� ����");
            GameObject g = new GameObject("Timer");
            Debug.Log(g.transform.position);
            inGameTimer = g.AddComponent<InGameTimer>();

            gameManagerNetwork = Instantiate((GameObject)Resources.Load("LEE JUNHYEONG/prefabs/GameNetwork"))
                .GetComponent<GameManagerNetwork>();

            gameOverState = GameOverState.LOSE;
        }
    }

    private void DestroyInGame(Scene scene, LoadSceneMode mode) // �ΰ��� ���� �� ���� Ÿ�̸� �ı� �÷��̾� �¸� false
    {
        if (inGameTimer != null)
            Destroy(inGameTimer.gameObject);

        if(gameManagerNetwork != null)
            Destroy(gameManagerNetwork.gameObject);

            gameOverState = GameOverState.LOSE;
    }

    public void ShowGameOver() // ���� ���� �� ȣ��
    {
        /*
         * ���� �޴��� ������ �ִ� ���ӿ��� ��Ʈ��ũ��� �޼ҵ忡�� �̸� ȣ���մϴ�.
         * gameOverEvents �� ���� �̺�Ʈ�� �����ϸ� �ش� �޼ҵ忡�� �̸� �����մϴ�.
         */

        gameOverEvents?.Invoke(gameOverState);
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

    public string GetLocalIPAddress()
    {
        string localIP = "";
        foreach (var networkInterface in Dns.GetHostEntry(Dns.GetHostName()).AddressList)
        {
            if (networkInterface.AddressFamily == AddressFamily.InterNetwork)
            {
                localIP = networkInterface.ToString();
                break;
            }
        }

        return localIP;
    }
}

#region ���� DB format
[Serializable]
public class MixerData
{
    public float SFX;

    public float BGM;

    public float master;

    public MixerData(float _sfx, float _bgm, float _master)
    {
        SFX = _sfx;
        BGM = _bgm;
        master = _master;
    }
}
#endregion

