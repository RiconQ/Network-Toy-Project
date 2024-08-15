using UnityEngine;
using UnityEngine.Networking;
using Mirror;

public class MaincameraControl : NetworkBehaviour
{
    public GameObject playerCamera;

    void Start()
    {
        if (isLocalPlayer)
        {
            playerCamera.SetActive(true);
            GetComponent<AudioListener>().enabled = true;
        }
        else
        {
            playerCamera.SetActive(false);
            GetComponent<AudioListener>().enabled = false;
        }
    }
}
