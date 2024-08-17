using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class InGameTimer : MonoBehaviour
{
    public float time { get; private set; }

    private void OnEnable()
    {
        time = 0f;
    }

    private void Update()
    {
        time += Time.deltaTime;
    }

    private void OnDisable()
    {
        time = 0f;
    }
}
