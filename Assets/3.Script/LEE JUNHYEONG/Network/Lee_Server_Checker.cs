using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;

// ���� ������ ������, Ŭ���̾�Ʈ�� Ŭ���̾�Ʈ�� ��ŸƮ�� ���ִ� ����
public class Lee_Server_Checker : MonoBehaviour
{

    public Type type;

    private NetworkManager manager;

    private void Start()
    {
        manager = GetComponent<NetworkManager>();
        if (type.Equals(Type.Server))
        {
            StartServer();
        }

        else
        {
            StartClient();
        }
    }

    public void StartServer()
    {
        if (Application.platform == RuntimePlatform.WebGLPlayer)
        {
            Debug.Log("WebGL ���� �ȵ�");
        }
        else
        {
            //��Ʈ��ũ �Ŵ����� �ִ� �ż������ ���ð���
            manager.StartServer();
            Debug.Log($"{manager.networkAddress} Start Server");
            NetworkServer.OnConnectedEvent +=
                (NetworkConnectionToClient) =>
                {
                    //�͸��Լ�(���ٽ�)�� �����ϰڴ�!!
                    Debug.Log($"New Client Connect : {NetworkConnectionToClient.address}");
                };

            //*********************************************************************************************************

            // ��� �� ��Ʈ��ũ ���� �޴��� ���� ����

            var flagManager = Instantiate((GameObject)Resources.Load("LEE JUNHYEONG/Prefabs/FlagManager"));
            NetworkServer.Spawn(flagManager);
            //*********************************************************************************************************
            NetworkServer.OnDisconnectedEvent +=
           (NetworkConnectionToClient) =>
           {
               Debug.Log($"Client Disconnect : {NetworkConnectionToClient.address}");
           };

        }
    }

    public void StartClient()
    {
        manager.StartClient();
        Debug.Log($"{manager.networkAddress} Start Client");
    }

    private void OnApplicationQuit()
    {
        if (NetworkClient.isConnected)
        {
            manager.StopClient();
        }
        if (NetworkServer.active)
        {
            manager.StopServer();
        }
    }
}
