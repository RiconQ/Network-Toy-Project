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
    [SerializeField] private  InGameTimer inGameTimer; // 타이머 변수
    [SerializeField] public GameManagerNetwork gameManagerNetwork; // 네트워크 게임 메니저
    public GameOverState gameOverState = GameOverState.LOSE; // 게임 종료 상태 변수

    public MixerData defaultMixerData { get; private set; } // 믹서 기본값
    public MixerData mixerData; // 자정되는 믹서

    private string mixerPath = Application.streamingAssetsPath + "MixerData.Json"; // 믹서 데이터 저장 경로

    public event Action<GameOverState> gameOverEvents; // 게임 종료 이벤트 변수

    public void Init()
    {
        defaultMixerData = new MixerData(40f, 40f, 40f);
        mixerData = GetMixerDataFromLocal();
        SceneManager.sceneLoaded += InitInGame;
        SceneManager.sceneLoaded += DestroyInGame;
        gameOverState = GameOverState.LOSE;
    }

    #region 게임 메니저 메서드
    private void InitInGame(Scene scene, LoadSceneMode mode) // 인게임 진입 시 초기화할 것들
    {
        //if (scene.buildIndex.Equals((int)SceneName.LEVEL))
        {
            Debug.Log("타이머 생성");
            GameObject g = new GameObject("Timer");
            Debug.Log(g.transform.position);
            inGameTimer = g.AddComponent<InGameTimer>();

            gameManagerNetwork = Instantiate((GameObject)Resources.Load("LEE JUNHYEONG/prefabs/GameNetwork"))
                .GetComponent<GameManagerNetwork>();

            gameOverState = GameOverState.LOSE;
        }
    }

    private void DestroyInGame(Scene scene, LoadSceneMode mode) // 인게임 종료 시 게임 타이머 파괴 플레이어 승리 false
    {
        if (inGameTimer != null)
            Destroy(inGameTimer.gameObject);

        if(gameManagerNetwork != null)
            Destroy(gameManagerNetwork.gameObject);

            gameOverState = GameOverState.LOSE;
    }

    public void ShowGameOver() // 게임 종료 시 호출
    {
        /*
         * 게임 메니저 하위에 있는 게임오버 네트워크라는 메소드에서 이를 호출합니다.
         * gameOverEvents 에 종료 이벤트를 저장하면 해당 메소드에서 이를 수행합니다.
         */

        gameOverEvents?.Invoke(gameOverState);
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

