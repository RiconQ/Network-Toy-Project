using Mirror;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class Build_RoomUI : MonoBehaviour
{
    public static Build_RoomUI Instance;

    [SerializeField] private Button startButton;
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

    public void ActiveStartButton()
    {
        startButton.gameObject.SetActive(true);
    }

    public void SetInteractableStartButton(bool isInteractable)
    {
        startButton.interactable = isInteractable;
    }

    //public void OnClickStartButton()
    //{
    //    var players = FindObjectsOfType<Build_RoomPlayer>();
    //    foreach (var p in players)
    //    {
    //        p.readyToBegin = true;
    //    }
    //    
    //    var manager = NetworkManager.singleton as Build_RoomManager;
    //    manager.ServerChangeScene(manager.GameplayScene);
    //}
}
