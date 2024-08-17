using Mirror;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class New_LobbyUIManager : MonoBehaviour
{
    public static New_LobbyUIManager Instance;

    private void Awake()
    {
        Instance = this;
    }

    [SerializeField] private Button startButton;
    [SerializeField] private TMP_Text playerCountText;
    public void UpdatePlayerCount()
    {
        var manager = NetworkManager.singleton as New_RoomManager;
        var players = FindObjectsOfType<New_RoomPlayer>();
        playerCountText.text = $"Players : {players.Length}";
    }

    public void ActiveStartButton()
    {
        startButton.gameObject.SetActive(true);
    }

    public void OnClickStartButton()
    {
        var players = FindObjectsOfType<New_RoomPlayer>();
        for(int i = 0; i < players.Length; i++)
        {
            players[i].SetreadyToBegin(true);
        }

        var manager = NetworkManager.singleton as New_RoomManager;
        manager.ServerChangeScene(manager.GameplayScene);
    }
}
