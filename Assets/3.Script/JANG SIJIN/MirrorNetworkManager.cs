using kcp2k;
using Mirror;
using System.Net.Sockets;
using System.Net;
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

    /// <summary>
    /// ���� ���� IP�� string���� ��ȯ�մϴ�.
    /// </summary>
    /// <returns></returns>
    public string GetLocalIPAddress()
    {
        string localIP = "";
        foreach (var networkInterface in Dns.GetHostEntry(Dns.GetHostName()).AddressList)
        {
            if (networkInterface.AddressFamily == AddressFamily.InterNetwork)
            {
                localIP = networkInterface.ToString();
                break;
            }
        }

        return localIP;
    }
}
