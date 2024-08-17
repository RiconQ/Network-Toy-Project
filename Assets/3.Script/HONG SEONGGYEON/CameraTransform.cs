using Mirror;
using UnityEngine;

public class CameraTransform : NetworkBehaviour
{
    public Transform target;
    public Vector3 offset;
    private Camera _camera;

    private void Start()
    {
        if (isLocalPlayer)  // authority�� �ƴ϶� hasAuthority�� ����
        {
            // ���� ī�޶� ���� ������Ʈ�� �ڽ����� ����
            _camera = Camera.main;
            if (_camera != null)
            {
                // ī�޶� �� ��ũ��Ʈ�� ���� ������Ʈ�� �ڽ����� ����
                _camera.transform.SetParent(transform);
                _camera.transform.localPosition = offset;
                _camera.transform.localRotation = Quaternion.identity;
            }
        }
    }

    private void FixedUpdate()
    {
        if (isLocalPlayer && _camera != null)
        {
            // Ÿ�� ��ġ�� �������� ī�޶� ��ġ ����
            _camera.transform.position
                = target.position + offset;
        }
    }
}
