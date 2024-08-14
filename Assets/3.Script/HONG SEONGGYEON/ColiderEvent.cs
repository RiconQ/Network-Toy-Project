using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ColiderEvent : MonoBehaviour
{

    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Player"))
        {
            Debug.Log("Player ����");
            PlayerMove player = other.GetComponentInParent<PlayerMove>();
            player.Die();
        }

        if(other.CompareTag("AI"))
        {
            Debug.Log("AI ����");
        }
    }


}
