using kcp2k;
using Mirror;
using Unity.VisualScripting;
using UnityEngine;

public class MirrorNetworkManager : NetworkManager, IInitializable
{
    public void Init()
    {
        // Transport ���� (�̹� �������� �ʴ� ���)
        if (transport == null)
        {
            KcpTransport kcpTransport = this.gameObject.AddComponent<KcpTransport>();
            transport = kcpTransport;
            Debug.Log("KcpTransport�� NetworkManager�� �߰��ǰ� �Ҵ�Ǿ����ϴ�.");
        }

        // �̱����� �����Ǿ����� ���� ��ü�� �ֻ����� �ƴ� ���
        if (transform.parent != Managers.Instance.transform)
        {
            Debug.Log("MirrorNetworkManager�� Managers�� ������ �̵��մϴ�.");
            transform.SetParent(Managers.Instance.transform);
        }
    }
}
