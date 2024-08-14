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
    [SerializeField] private  InGameTimer inGameTimer; // 타이머 변수
    [SerializeField] private GameOverNetwork gameOverNetwork; // 게임 오버 네트워크

    MixerData defaultMixerData; // 믹서 기본값
    MixerData mixerData; // 자정되는 믹서
    private string mixerPath = Application.streamingAssetsPath + "MixerData.Json"; // 믹서 데이터 저장 경로

    public event Action gameOverEvents; // 게임 종료 이벤트 변수
    public bool isPlayerWin = false; // 플레이어 승리 여부 변수

    public void Init()
    {
        defaultMixerData = new MixerData(40f, 40f, 40f);
        mixerData = GetMixerDataFromLocal();
        SceneManager.sceneLoaded += InitInGame;
        SceneManager.sceneLoaded += DestroyInGame;
    }

    #region 게임 메니저 메서드
    private void InitInGame(Scene scene, LoadSceneMode mode) // 인게임 진입 시 초기화할 것들
    {
        if (scene.buildIndex.Equals((int)SceneName.LEVEL))
        {
            isPlayerWin = false;
            inGameTimer = Instantiate(new GameObject(), transform).AddComponent<InGameTimer>();
            gameOverNetwork = Instantiate(new GameObject(), transform).AddComponent<GameOverNetwork>();
        }
    }

    private void DestroyInGame(Scene scene, LoadSceneMode mode) // 인게임 종료 시 게임 타이머 파괴 플레이어 승리 false
    {
        if (inGameTimer != null)
        {
            Destroy(inGameTimer.gameObject);
            Destroy(gameOverNetwork.gameObject);
        }

        isPlayerWin = false;
    }

    public void ShowGameOver() // 게임 종료 시 호출
    {
        /*
         * gameOver UI 출력
         * 이벤트 호출
         */
        gameOverEvents?.Invoke();
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
}

#region 사운드 DB format
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

