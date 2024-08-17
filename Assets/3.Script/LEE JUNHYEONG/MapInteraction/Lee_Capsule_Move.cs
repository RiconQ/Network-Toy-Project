using Mirror;
using Mirror.Examples.RigidbodyBenchmark;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Lee_Capsule_Move : NetworkBehaviour
{
    [SerializeField] private Rigidbody rb;

    [SerializeField] private float newton = 5;

    [ClientRpc]
    public void RpcTeleport(Vector3 spawnPos)
    {
        transform.position = spawnPos;
    }

    private void Start()
    {
        if(!isLocalPlayer) return;

        rb = GetComponent<Rigidbody>();
    }

    private void FixedUpdate()
    {
        if (!isLocalPlayer) return;

        Movement3D();
    }

    private void Movement3D()
    {
        float x = Input.GetAxisRaw("Horizontal");
        float z = Input.GetAxisRaw("Vertical");

        Vector3 direction = new Vector3 (x, 0, z);

        rb.velocity = direction * newton;
    }
}
