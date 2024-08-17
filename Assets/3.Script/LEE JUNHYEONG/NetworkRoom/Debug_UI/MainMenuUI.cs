using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;

public class MainMenuUI : MonoBehaviour
{
    public void OnClickCreateHost()
    {
        var manager = NetworkRoomManager.singleton;

        manager.StartHost();
    }

    public void OnClickEnterServer()
    {
        var manager = NetworkRoomManager.singleton;

        manager.StartClient();
    }
}
