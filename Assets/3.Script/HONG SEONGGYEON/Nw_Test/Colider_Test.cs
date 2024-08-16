using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;

public class Colider_Test : NetworkBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        Debug.Log("OnTriggerEnter called");
        Debug.Log(other.tag);
        Debug.Log(other.name);

        //   if (!isServer)  // ���������� ����ǵ��� ���� (�ʿ��� ���)
        //   {
        //       Debug.Log("����");
        //       return;
        //   }
        if (other.CompareTag("Player"))
        {
           // Debug.Log("Player ����");
            Player_Test otherPlayer = other.GetComponentInParent<Player_Test>();
            otherPlayer.Die();
        }

        if (other.CompareTag("AI"))
        {
            Debug.Log("AI ����");
            Player_Test player = GetComponentInParent<Player_Test>();
            player.StartCoroutine(player.Stun_co());

            AI ai = other.GetComponentInParent<AI>();
            ai.Die();
        }
    }
}
