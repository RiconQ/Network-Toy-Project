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
                // T 타입의 인스턴스가 존재하는지 확인
                _instance = FindObjectOfType<T>();

                // 만약 존재하지 않는다면, 새로운 게임 오브젝트를 생성하고, 그 오브젝트에 T 컴포넌트를 붙임
                if (_instance == null)
                {
                    string singletonName = typeof(T).Name;
                    GameObject singletonObject = new GameObject(singletonName);
                    _instance = singletonObject.AddComponent<T>();

                    // 씬 전환 시에도 파괴되지 않도록 설정
                    DontDestroyOnLoad(singletonObject);
                }
            }
            return _instance;
        }
    }

    // 상속받는 클래스가 Awake에서 기본적으로 호출할 수 있도록 가상 함수로 정의
    protected virtual void Awake()
    {
        // 인스턴스가 이미 존재한다면 새로 생성된 객체를 파괴
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
