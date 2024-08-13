using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ColiderEvent : MonoBehaviour
{

    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Player"))
        {
            Debug.Log("Player 때림");
            //플레이어 죽는 매서드 호출
        }

        if(other.CompareTag("AI"))
        {
            Debug.Log("AI 때림");
        }
    }


}
