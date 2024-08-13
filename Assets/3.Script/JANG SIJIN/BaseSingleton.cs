using UnityEngine;

public class BaseSingleton<T> : MonoBehaviour where T : MonoBehaviour
{
    private static T _instance;

    public static T Instance
    {
        get
        {
            if (_instance == null)
            {
                // T Ÿ���� �ν��Ͻ��� �����ϴ��� Ȯ��
                _instance = FindObjectOfType<T>();

                // ���� �������� �ʴ´ٸ�, ���ο� ���� ������Ʈ�� �����ϰ�, �� ������Ʈ�� T ������Ʈ�� ����
                if (_instance == null)
                {
                    string singletonName = typeof(T).Name;
                    GameObject singletonObject = new GameObject(singletonName);
                    _instance = singletonObject.AddComponent<T>();

                    // �� ��ȯ �ÿ��� �ı����� �ʵ��� ����
                    DontDestroyOnLoad(singletonObject);
                }
            }
            return _instance;
        }
    }

    // ��ӹ޴� Ŭ������ Awake���� �⺻������ ȣ���� �� �ֵ��� ���� �Լ��� ����
    protected virtual void Awake()
    {
        // �ν��Ͻ��� �̹� �����Ѵٸ� ���� ������ ��ü�� �ı�
        if (_instance == null)
        {
            _instance = this as T;
            DontDestroyOnLoad(gameObject);
        }
        else if (_instance != this)
        {
            Destroy(gameObject);
        }
    }
}
