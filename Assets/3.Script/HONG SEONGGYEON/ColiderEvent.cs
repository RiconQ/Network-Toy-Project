using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ColiderEvent : MonoBehaviour
{

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            PlayerMove otherPlayer = other.GetComponentInParent<PlayerMove>();
            Debug.Log("Player ����");
            otherPlayer.Die();
        }

        if (other.CompareTag("AI"))
        {
            PlayerMove player= GetComponentInParent<PlayerMove>();
            Debug.Log("AI ����");
            player.StartCoroutine(player.Stun_co());

           AI ai = other.GetComponentInParent<AI>();
          ai.Die();

        }
    }


}
