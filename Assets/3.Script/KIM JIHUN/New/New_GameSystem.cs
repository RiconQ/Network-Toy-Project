using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;

public class New_GameSystem : NetworkBehaviour
{
    public static New_GameSystem instance;

    private List<New_IngameCharacterMover> players = new List<New_IngameCharacterMover>();

    [SerializeField] private Transform[] spawnTransform;

    public void AddPlayer(New_IngameCharacterMover player)
    {
        if (!players.Contains(player))
        {
            players.Add(player);
        }
    }

    private IEnumerator GameReady()
    {
        var manager = NetworkManager.singleton as New_RoomManager;
        while (manager.roomSlots.Count != players.Count)
        {
            yield return null;
        }

        for (int i = 0; i < players.Count; i++)
        {
            players[i].playerType = EPlayerType.Alive;

            players[i].RpcTeleport(spawnTransform[i].position);
        }
        Debug.Log(manager.roomSlots.Count);
    }

    public List<New_IngameCharacterMover> GetPlayerList()
    {
        return players;
    }
    private void Awake()
    {
        instance = this;
    }

    private void Start()
    {
        if (isServer)
        {
            StartCoroutine(GameReady());

        }
    }
}
