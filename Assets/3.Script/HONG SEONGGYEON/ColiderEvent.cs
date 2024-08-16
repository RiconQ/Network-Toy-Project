using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;

public class ColiderEvent : NetworkBehaviour
{
    [ServerCallback]
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            Debug.Log("Player 때림");
            Player_Test_mine otherPlayer = other.GetComponentInParent<Player_Test_mine>();
            otherPlayer.RpcDie();
        }

        if (other.CompareTag("AI"))
        {
            Debug.Log("AI 때림");
            Player_Test_mine player = GetComponentInParent<Player_Test_mine>();
            player.StartCoroutine(player.Stun_co());

           AI ai = other.GetComponentInParent<AI>();
          ai.Die();

        }
    }

}
