//using Mono.CecilX.Cil;
using Org.BouncyCastle.Asn1.Mozilla;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UIManager : MonoBehaviour
{
    public void OnClickCreateRoomButton()
    {
        var manager = MirrorNetworkRoomManager.singleton;
        manager.StartServer();
    }

    public void OnClickEnterRoomButton()
    {
        var manager = MirrorNetworkRoomManager.singleton;
        manager.StartClient();
    }
}
