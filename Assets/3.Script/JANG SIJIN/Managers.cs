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
        // Hierarchy���� "Managers" ������Ʈ�� ã��
        GameObject managersObject = GameObject.Find("Managers");

        if (managersObject == null)
        {
            // "Managers" ������Ʈ�� �������� ������ ���� �����ϰ� �ش� ��ũ��Ʈ�� �߰�
            managersObject = new GameObject("Managers");
            managersObject.GetOrAddComponent<Managers>();
        }

        // "Managers ������Ʈ�� Managers ��ũ��Ʈ�� �پ��ִ��� Ȯ��
        Managers existingManagers = managersObject.GetComponent<Managers>();
        if ((existingManagers != null && existingManagers != this))
        {
            // �̹� �����ϴ� Managers ��ũ��Ʈ�� ���� �ν��Ͻ��� �ٸ��� ���� ���� ������Ʈ �ı�
            Destroy(gameObject);
            return;
        }

        // �ν��Ͻ� ���� �� �ı� ����
        Instance = existingManagers ?? this;
        DontDestroyOnLoad(managersObject);

        // ���� �Ŵ����� �ʱ�ȭ
        InitManagers();
    }

    private void InitManagers()
    {
        // DatabaseManager �ʱ�ȭ
        Database = InitManager<DatabaseManager>();

        // MirrorNetworkManager �ʱ�ȭ
        Network = InitManager<MirrorNetworkManager>();

        // SceneManagerEX �ʱ�ȭ
        sceneManager = InitManager<SceneManagerEX>();

        // GameManager �ʱ�ȭ
        gameManager = InitManager<GameManager>();
    }

    private T InitManager<T>() where T : MonoBehaviour
    {
        // ������ �Ŵ������� ã�´�.
        T managerInstance = FindObjectOfType<T>();


        // ���� �������� ������ ���ο� ���� ������Ʈ�� �����ϰ�, �ش� �Ŵ����� �߰��Ѵ�.
        if (managerInstance == null)
        {
            Debug.Log("InitManager" + typeof(T).Name);
            string managerName = typeof(T).Name;
            GameObject managerObject = new GameObject(managerName);
            managerObject.transform.parent = this.transform;
            managerInstance = managerObject.AddComponent<T>();
        }

        // �Ŵ��� �ʱ�ȭ
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