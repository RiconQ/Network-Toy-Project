using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;

// 내가 서버면 서버를, 클라이언트면 클라이언트를 스타트만 해주는 역할
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
            Debug.Log("WebGL 서버 안됨");
        }
        else
        {
            //네트워크 매니저에 있는 매서드들을 들고올거임
            manager.StartServer();
            Debug.Log($"{manager.networkAddress} Start Server");
            NetworkServer.OnConnectedEvent +=
                (NetworkConnectionToClient) =>
                {
                    //익명함수(람다식)로 구현하겠다!!
                    Debug.Log($"New Client Connect : {NetworkConnectionToClient.address}");
                };

            //*********************************************************************************************************

            // 기둥 및 네트워크 게임 메니저 생성 로직

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
