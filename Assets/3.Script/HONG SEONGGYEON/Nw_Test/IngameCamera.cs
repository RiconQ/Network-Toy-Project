using Mirror;
using UnityEngine;

public class IngameCamera : NetworkBehaviour
{
    public Transform target;
    public Vector3 offset;


    private void FixedUpdate()
    {
        // Ÿ�� ��ġ�� �������� ī�޶� ��ġ ����
        transform.position = target.position + offset;

    }
}
