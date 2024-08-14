using Mirror;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MirrorNetworkRoomManager : NetworkRoomManager
{
    // �������� ���ο� Ŭ���̾�Ʈ�� �����Ǿ��� ��, ȣ��Ǵ� �޼���
    public override void OnRoomServerConnect(NetworkConnectionToClient conn)
    {
        base.OnRoomServerConnect(conn);

        var player = Instantiate(spawnPrefabs[0]);
        NetworkServer.Spawn(player, conn);
    }
}
