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
    LEVEL = 2
};


public class SceneManagerEX : MonoBehaviour, IInitializable
{
    public void Init()
    {

    }

    [VisibleEnum(typeof(SceneName))]
    public void btn_LoadScene(int sceneName) // ��ư�� �� �ε�
    {
        switch (sceneName)
        {
                case (int)SceneName.LOGIN:
                SceneManager.LoadScene(sceneName);
                break;

                case (int)SceneName.LOBBY:
                SceneManager.LoadScene(sceneName);
                break;

                case (int)SceneName.LEVEL:
                SceneManager.LoadScene(sceneName);
                break;

                default:
                Debug.Log("Invalid Scene�� �ε� �Ǿ����ϴ�.");
                break;
        }
    }

    public void LoadScene(SceneName sceneName) // ��ũ��Ʈ�� �� �ε�
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
                Debug.Log("Invalid Scene�� �ε� �Ǿ����ϴ�.");
                break;
        }
    }


}
