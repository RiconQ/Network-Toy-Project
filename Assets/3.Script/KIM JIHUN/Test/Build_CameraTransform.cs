using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Build_CameraTransform : MonoBehaviour
{
    public GameObject target;
    public Vector3 offset;

    private void FixedUpdate()
    {
        this.transform.position =
            new Vector3(target.transform.position.x + offset.x,
                        target.transform.position.y + offset.y,
                        target.transform.position.z + offset.z);
    }
}
