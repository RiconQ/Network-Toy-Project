using System.Collections;
using System.Collections.Generic;
using System.Threading;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    public static GameManager instance;

    [SerializeField] private  InGameTimer inGameTimer;

    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);
        }

        else
        {
            Destroy(gameObject);
        }
    }

    private void Start()
    {
        if (SceneManager.GetActiveScene().name.Equals("Level"))
        {
            inGameTimer.gameObject.SetActive(true);
        }

        else
        {
            inGameTimer.gameObject.SetActive(false);
        }
    }

    public void LoadSceneByIndex(int sceneNum)
    {
        SceneManager.LoadScene(sceneNum);
    }

    public void LoadSceneByName(string sceneName)
    {
        SceneManager.LoadScene(sceneName);
    }

    public void SaveNewScore()
    {
        LocalDataManager.Instance.SaveResult();
    }

    public void SaveNewMixer()
    {
        LocalDataManager.Instance.SaveMixerData();
    }

    public void ShowGameOver(bool isWin)
    {
        /*
         * gameOver UI 출력
         */

        if (isWin)
        {
            // 승리 로직
        }

        else
        {
            // 패배 로직
        }
    }

    public void Init()
    {
        throw new System.NotImplementedException();
    }
}
