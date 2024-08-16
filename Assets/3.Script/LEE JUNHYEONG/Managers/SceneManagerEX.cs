using Org.BouncyCastle.Pqc.Crypto.Utilities;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using UnityEngine;
using UnityEngine.SceneManagement;
public enum SceneName
{
    LOGIN = 0,
    LOBBY = 1,
    ROOM = 2,
    LEVEL = 3
};

public class SceneManagerEX : MonoBehaviour, IInitializable
{
    public void Init()
    {

    }

    public void LoadScene(SceneName sceneName) // 스크립트용 씬 로드
    {
        switch (sceneName)
        {
            case SceneName.LOGIN:
                SceneManager.LoadScene((int)sceneName);
                break;

            case SceneName.LOBBY:
                SceneManager.LoadScene((int)sceneName);
                break;

            case SceneName.LEVEL:
                SceneManager.LoadScene((int)sceneName);
                break;

            default:
                Debug.Log("Invalid Scene이 로드 되었습니다.");
                break;
        }
    }


}
