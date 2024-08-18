using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;

public class New_GameSystem : NetworkBehaviour
{
    public static New_GameSystem instance;

    private List<New_IngameCharacterMover> players = new List<New_IngameCharacterMover>();

    public GameObject gameOverUI;

    [SerializeField] private Transform[] spawnTransform;

    public void AddPlayer(New_IngameCharacterMover player)
    {
        if (!players.Contains(player))
        {
            players.Add(player);
        }
    }

    [Server]
    public void UpdateAlivePlayer()
    {
        Debug.Log("UpdateAlivePlayer");
        List<New_IngameCharacterMover> alivePlayers = new List<New_IngameCharacterMover>();
        foreach (var player in players)
        {
            if (player.playerType == EPlayerType.Alive)
            {
                if (!alivePlayers.Contains(player))
                {
                    alivePlayers.Add(player);
                }
            }
        }

        if (alivePlayers.Count == 1)
        {
            Debug.Log("생존자 1명");
            //Debug.Log(alivePlayers[0].playerName);
            // Game Over -> 
            RpcShowGameOverUI();
        }
        else
            Debug.Log($"생존자 {alivePlayers.Count}명");

    }

    [ClientRpc]
    private void RpcShowGameOverUI()
    {
        gameOverUI.SetActive(true);
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
            //players[i].netID = i;
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
            SpawnAIs(50);  // 50마리의 AI 생성
        }
    }

    public void ExitGame()
    {
        var manager = New_RoomManager.singleton;
        if (manager.mode == Mirror.NetworkManagerMode.Host)
        {
            manager.StopHost();
        }
        else if (manager.mode == Mirror.NetworkManagerMode.ClientOnly)
        {
            manager.StopClient();
        }
    }

    //======================================================
    // [AI 스폰, 이동, 사망 처리 관련 로직] - 하단 코드부터 시작
    //======================================================
    [SerializeField] private GameObject aiPrefab;  // AI 프리팹
    [SerializeField] private Transform[] aiSpawnPoints;  // AI 스폰 포인트

    [Server]
    private void SpawnAIs(int count)
    {
        aiSpawnPoints = spawnTransform;
        for (int i = 0; i < count; i++)
        {
            // 랜덤한 위치에서 AI 소환
            Transform spawnPoint = aiSpawnPoints[Random.Range(0, spawnTransform.Length)];
            GameObject aiInstance = Instantiate(aiPrefab, spawnPoint.position, spawnPoint.rotation);
            NetworkServer.Spawn(aiInstance);  // 네트워크 상에서 AI 소환
        }
    }

}
