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
    LOOSE,
    WIN_FLAG,
    WIN_ALLDEAD
};

public class GameManager : MonoBehaviour, IInitializable
{
    [SerializeField] public  InGameTimer inGameTimer; // Ÿ�̸� ����
    public GameOverState gameOverState = GameOverState.LOOSE; // ���� ���� ���� ����

    public MixerData defaultMixerData { get; private set; } // �ͼ� �⺻��
    public MixerData mixerData; // �����Ǵ� �ͼ�

    private string mixerPath = Application.streamingAssetsPath + "MixerData.Json"; // �ͼ� ������ ���� ���

    public event Action<GameOverState> gameOverEvents; // ���� ���� �̺�Ʈ ����

    public void Init()
    {
        defaultMixerData = new MixerData(40f, 40f, 40f);
        mixerData = GetMixerDataFromLocal();
        SceneManager.sceneLoaded += goInsideGame;
        SceneManager.sceneUnloaded += OutInGame;
        gameOverState = GameOverState.LOOSE;

        GameObject Timer = new GameObject("Timer");
        inGameTimer = Timer.AddComponent<InGameTimer>();
        inGameTimer.gameObject.transform.SetParent(transform);
        inGameTimer.gameObject.SetActive(false);
    }

    #region ���� �޴��� �޼���
    private void goInsideGame(Scene scene, LoadSceneMode mode) // �ΰ��� ���� �� �ʱ�ȭ�� �͵�
    {
        //if (scene.buildIndex.Equals((int)SceneName.LEVEL))
        {
                inGameTimer.gameObject.SetActive(true);

            gameOverState = GameOverState.LOOSE;
        }
    }

    private void OutInGame(Scene scene) // �ΰ��� ���� �� ���� Ÿ�̸� �ı� �÷��̾� �¸� false
    {
        if (scene.buildIndex.Equals(SceneName.LEVEL))
        {
            inGameTimer.gameObject.SetActive(false);
            gameOverState = GameOverState.LOOSE;
        }
    }

        public void ShowGameOver(GameOverState overState, bool _isLocalPlayer) // ���� ���� Client RPC���� ȣ��
    {
        /*
         * ���� �޴��� ������ �ִ� ���ӿ��� ��Ʈ��ũ��� �޼ҵ忡�� �̸� ȣ���մϴ�.
         * gameOverEvents �� ���� �̺�Ʈ�� ����ϸ� �ش� �޼ҵ忡�� �̸� �����մϴ�.
         */

        if (_isLocalPlayer)
        {
            gameOverState = overState;
        }

        else
        {
            gameOverState = GameOverState.LOOSE;
        }

        Debug.Log($"���� ���� ���� ���� {gameOverState}");

        gameOverEvents?.Invoke(gameOverState);
    }

    public void CurSorControl(bool isLocked) // Ŀ�� ��Ʈ��
    {
        if (isLocked)
        {
            Cursor.visible = false;
            Cursor.lockState = CursorLockMode.Locked;
        }

        else
        {
            Cursor.visible = false;
            Cursor.lockState = CursorLockMode.Locked;
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

