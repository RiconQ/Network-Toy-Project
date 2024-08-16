using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;

public class ColiderEvent : NetworkBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        Debug.Log("OnTriggerEnter called"); 
        Debug.Log(other.name);
        Debug.Log(other.tag);

     //   if (!isServer)  // ���������� ����ǵ��� ���� (�ʿ��� ���)
     //   {
     //       Debug.Log("����");
     //       return;
     //   }
        if (other.CompareTag("Player"))
        {
            Debug.Log("Player ����");
            Player_Test_mine otherPlayer = other.GetComponentInParent<Player_Test_mine>();
            otherPlayer.RpcDie();
        }

        if (other.CompareTag("AI"))
        {
            Debug.Log("AI ����");
            Player_Test_mine player = GetComponentInParent<Player_Test_mine>();
            player.StartCoroutine(player.Stun_co());

            AI ai = other.GetComponentInParent<AI>();
            ai.Die();
        }
    }
}
