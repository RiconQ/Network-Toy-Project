using UnityEngine;
using UnityEngine.Networking;
using Mirror;

public class MaincameraControl : NetworkBehaviour
{
    public GameObject playerCamera;

    void Start()
    {
        if (!isLocalPlayer)
        {
            playerCamera.SetActive(false);
            playerCamera.GetComponent<AudioListener>().enabled = false;
        }
    }
}
