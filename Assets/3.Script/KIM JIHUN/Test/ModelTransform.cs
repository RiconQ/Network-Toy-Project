using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ModelTransform : MonoBehaviour
{
    public Transform playerModelTransform;

    // Update is called once per frame
    void Update()
    {
        gameObject.transform.position = playerModelTransform.position;
    }
}
