using kcp2k;
using Mirror;
using Unity.VisualScripting;
using UnityEngine;

public class MirrorNetworkManager : NetworkManager, IInitializable
{
    public void Init()
    {
        // Transport 설정 (이미 존재하지 않는 경우)
        if (transport == null)
        {
            KcpTransport kcpTransport = this.gameObject.AddComponent<KcpTransport>();
            transport = kcpTransport;
            Debug.Log("KcpTransport가 NetworkManager에 추가되고 할당되었습니다.");
        }

        // 싱글톤이 설정되었지만 현재 객체가 최상위가 아닌 경우
        if (transform.parent != Managers.Instance.transform)
        {
            Debug.Log("MirrorNetworkManager를 Managers의 하위로 이동합니다.");
            transform.SetParent(Managers.Instance.transform);
        }
    }
}
