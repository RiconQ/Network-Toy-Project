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

    public void Init()
    {
        throw new System.NotImplementedException();
    }
}
