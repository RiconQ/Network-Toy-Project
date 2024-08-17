using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;

public class New_ColliderEvent : NetworkBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        Debug.Log(other.GetComponentInParent<New_IngameCharacterMover>().name);

        if (other.CompareTag("Player"))
        {
            Debug.Log("Player 때림");
            New_IngameCharacterMover otherPlayer = other.GetComponentInParent<New_IngameCharacterMover>();
            otherPlayer.Dead();
        }

        if (other.CompareTag("AI"))
        {
            //AI 공격 매서드
        }
    }
}
