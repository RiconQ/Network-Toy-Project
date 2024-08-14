using UnityEngine;
using UnityEngine.Networking;
using Mirror;

public class MaincameraControl : NetworkBehaviour
{
    public override void OnStartLocalPlayer()
    {
        GetComponentInChildren<AudioListener>().enabled = true;
    }

    public override void OnStartClient()
    {
        if (!isLocalPlayer)
        {
            GetComponentInChildren<AudioListener>().enabled = false;
        }
    }
}
