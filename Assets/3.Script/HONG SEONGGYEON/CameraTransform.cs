using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraTransform : MonoBehaviour
{
    public Transform target;
    public Vector3 offset;

    private void Update()
    {
        gameObject.transform.position = target.position + offset;
    }
}
