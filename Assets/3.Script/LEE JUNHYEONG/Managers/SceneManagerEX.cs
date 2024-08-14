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
    public void LoadScene(int sceneName)
    {
        if ((int)SceneName.LOGIN <= sceneName && sceneName <= (int)SceneName.LEVEL)
        {
            SceneManager.LoadScene(sceneName);
        }

        else
        {
            Debug.LogWarning("불러올 수 없는 씬입니다.");
        }
    }


}
