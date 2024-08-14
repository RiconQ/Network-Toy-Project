using Mirror;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MirrorNetworkRoomManager : NetworkRoomManager
{
    // 서버에서 새로운 클라이언트가 감지되었을 때, 호출되는 메서드
    public override void OnRoomServerConnect(NetworkConnectionToClient conn)
    {
        base.OnRoomServerConnect(conn);

        var player = Instantiate(spawnPrefabs[0]);
        NetworkServer.Spawn(player, conn);
    }
}
