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

    [VisibleEnum(typeof(SceneName))]
    public void LoadScene(SceneName sceneName)
    {
        if (SceneName.LOGIN <= sceneName && sceneName <= SceneName.LEVEL)
        {
            SceneManager.LoadScene(sceneName.ToString());
        }

        else
        {
            Debug.LogWarning("불러올 수 없는 씬입니다.");
        }
    }


}
