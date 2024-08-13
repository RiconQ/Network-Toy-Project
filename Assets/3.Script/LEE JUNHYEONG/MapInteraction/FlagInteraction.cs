using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FlagInteraction : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        /*
         * 플레이어의 깃발 점수 올리는 로직 추가
         */
        if (other.CompareTag("Player"))
        {
            Debug.Log("깃발 점수 상승 로직 추가 필요");
        }
    }
}
