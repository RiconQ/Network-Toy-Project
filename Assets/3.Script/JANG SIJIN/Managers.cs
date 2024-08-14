using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class Managers : MonoBehaviour
{
    public DatabaseManager Database { get; private set; }
    public MirrorNetworkManager Network { get; private set; }
    public SceneManagerEX sceneManager { get; private set; }
    public GameManager gameManager { get; private set; }

    #region Set Singleton
    public static Managers Instance { get; private set; }
    private void Awake()
    {
        // Hierarchy에서 "Managers" 오브젝트를 찾음
        GameObject managersObject = GameObject.Find("Managers");

        if (managersObject == null)
        {
            // "Managers" 오브젝트가 존재하지 않으면 새로 생성하고 해당 스크립트를 추가
            managersObject = new GameObject("Managers");
            managersObject.GetOrAddComponent<Managers>();
        }

        // "Managers 오브젝트에 Managers 스크립트가 붙어있는지 확인
        Managers existingManagers = managersObject.GetComponent<Managers>();
        if ((existingManagers != null && existingManagers != this))
        {
            // 이미 존재하는 Managers 스크립트가 현재 인스턴스와 다르면 현재 게임 오브젝트 파괴
            Destroy(gameObject);
            return;
        }

        // 인스턴스 설정 및 파괴 방지
        Instance = existingManagers ?? this;
        DontDestroyOnLoad(managersObject);

        // 하위 매니저들 초기화
        InitManagers();
    }

    private void InitManagers()
    {
        // DatabaseManager 초기화
        Database = InitManager<DatabaseManager>();

        // MirrorNetworkManager 초기화
        Network = InitManager<MirrorNetworkManager>();

        // SceneManagerEX 초기화
        sceneManager = InitManager<SceneManagerEX>();

        // GameManager 초기화
        gameManager = InitManager<GameManager>();
    }

    private T InitManager<T>() where T : MonoBehaviour
    {
        // 기존의 매니저들을 찾는다.
        T managerInstance = FindObjectOfType<T>();


        // 만약 존재하지 않으면 새로운 게임 오브젝트를 생성하고, 해당 매니저를 추가한다.
        if (managerInstance == null)
        {
            Debug.Log("InitManager" + typeof(T).Name);
            string managerName = typeof(T).Name;
            GameObject managerObject = new GameObject(managerName);
            managerObject.transform.parent = this.transform;
            managerInstance = managerObject.AddComponent<T>();
        }

        // 매니저 초기화
        if (managerInstance is IInitializable initializable)
        {
            initializable.Init();
        }

        return managerInstance;
    }
    #endregion
}

public interface IInitializable
{
    void Init();
}