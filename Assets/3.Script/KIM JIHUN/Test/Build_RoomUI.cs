using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Build_RoomUI : MonoBehaviour
{
    public void ExitGame()
    {
        var manager = Build_RoomManager.singleton;
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
