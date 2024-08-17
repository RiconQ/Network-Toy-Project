using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;
using static UnityEngine.Rendering.DebugUI;

public class New_RoomPlayer : NetworkRoomPlayer
{
    private static New_RoomPlayer myRoomPlayer;

    public static New_RoomPlayer player
    {

        get
        {
            if (myRoomPlayer == null)
            {
                var players = FindObjectsOfType<New_RoomPlayer>();
                foreach (var item in players)
                {
                    if (item.isOwned)
                    {
                        myRoomPlayer = item;
                    }
                }
            }
            return myRoomPlayer;
        }
    }

    public void Start()
    {
        base.Start();

        if (isServer)
        {
            SpawnLobbyPlayerCharacter();
            New_LobbyUIManager.Instance.ActiveStartButton();
        }
        New_LobbyUIManager.Instance.UpdatePlayerCount();
    }

    private void OnDestroy()
    {
        if (New_LobbyUIManager.Instance != null)
        {
            New_LobbyUIManager.Instance.UpdatePlayerCount();
        }
    }

    private void SpawnLobbyPlayerCharacter()
    {
        Vector3 spawnPos = FindObjectOfType<SpawnPositions>().GetSpawnPosition();

        var player = Instantiate(New_RoomManager.singleton.spawnPrefabs[0], spawnPos, Quaternion.identity);
        NetworkServer.Spawn(player, connectionToClient);
    }
}
