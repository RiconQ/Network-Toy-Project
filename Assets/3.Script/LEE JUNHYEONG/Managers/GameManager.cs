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
    [SerializeField] public  InGameTimer inGameTimer; // 타이머 변수
    public GameOverState gameOverState = GameOverState.LOOSE; // 게임 종료 상태 변수

    public MixerData defaultMixerData { get; private set; } // 믹서 기본값
    public MixerData mixerData; // 자정되는 믹서

    private string mixerPath = Application.streamingAssetsPath + "MixerData.Json"; // 믹서 데이터 저장 경로

    public event Action<GameOverState> gameOverEvents; // 게임 종료 이벤트 변수

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

    #region 게임 메니저 메서드
    private void goInsideGame(Scene scene, LoadSceneMode mode) // 인게임 진입 시 초기화할 것들
    {
        //if (scene.buildIndex.Equals((int)SceneName.LEVEL))
        {
                inGameTimer.gameObject.SetActive(true);

            gameOverState = GameOverState.LOOSE;
        }
    }

    private void OutInGame(Scene scene) // 인게임 종료 시 게임 타이머 파괴 플레이어 승리 false
    {
        if (scene.buildIndex.Equals(SceneName.LEVEL))
        {
            inGameTimer.gameObject.SetActive(false);
            gameOverState = GameOverState.LOOSE;
        }
    }

        public void ShowGameOver(GameOverState overState, bool _isLocalPlayer) // 게임 종료 Client RPC에서 호출
    {
        /*
         * 게임 메니저 하위에 있는 게임오버 네트워크라는 메소드에서 이를 호출합니다.
         * gameOverEvents 에 종료 이벤트를 등록하면 해당 메소드에서 이를 수행합니다.
         */

        if (_isLocalPlayer)
        {
            gameOverState = overState;
        }

        else
        {
            gameOverState = GameOverState.LOOSE;
        }

        Debug.Log($"현재 게임 오버 상태 {gameOverState}");

        gameOverEvents?.Invoke(gameOverState);
    }

    public void CurSorControl(bool isLocked) // 커서 컨트롤
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

    #region 사운드 저장 메서드
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

#region 사운드 DB format
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

