using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class New_GameRoomUI : MonoBehaviour
{
    public void ExitGame()
    {
        var manager = New_RoomManager.singleton;
        if(manager.mode == Mirror.NetworkManagerMode.Host)
        {
            manager.StopHost();
        }
        else if(manager.mode == Mirror.NetworkManagerMode.ClientOnly)
        {
            manager.StopClient();
        }
    }
}
