using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InGameTimer : MonoBehaviour
{
    public float time { get; private set; }

    private void Update()
    {
        time += Time.deltaTime;
    }
}
