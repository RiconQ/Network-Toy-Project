using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FlagInteraction : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        /*
         * �÷��̾��� ��� ���� �ø��� ���� �߰�
         */
        if (other.CompareTag("Player"))
        {
            Debug.Log("��� ���� ��� ���� �߰� �ʿ�");
        }
    }
}
