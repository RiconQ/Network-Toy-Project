using Mirror;
using UnityEngine;

public class IngameCamera : NetworkBehaviour
{
    public Transform target;
    public Vector3 offset;


    private void FixedUpdate()
    {
        // 타겟 위치를 기준으로 카메라 위치 갱신
        transform.position = target.position + offset;

    }
}
