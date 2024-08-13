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
            Debug.Log("때림");
        }
    }

    public void EnableColider()
    {
        Debug.Log("활성");
        col.SetActive(true);
    }

    public void DisableColider()
    {
        Debug.Log("비활성");
        col.SetActive(false);
    }

}
