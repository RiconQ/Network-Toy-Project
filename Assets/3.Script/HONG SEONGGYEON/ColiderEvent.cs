using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ColiderEvent : MonoBehaviour
{
    public GameObject col;


    private void Start()
    {
        col.SetActive(false);
    }
    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Player"))
        {
            Debug.Log("����");
        }
    }

    public void EnableColider()
    {
        Debug.Log("Ȱ��");
        col.SetActive(true);
    }

    public void DisableColider()
    {
        Debug.Log("��Ȱ��");
        col.SetActive(false);
    }

}
