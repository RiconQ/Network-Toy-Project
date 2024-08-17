using Mirror;
using UnityEngine;

public class CameraTransform : NetworkBehaviour
{
    public Transform target;
    public Vector3 offset;
    private Camera _camera;

    private void Start()
    {
        if (isLocalPlayer)  // authority가 아니라 hasAuthority로 수정
        {
            // 메인 카메라를 현재 오브젝트의 자식으로 설정
            _camera = Camera.main;
            if (_camera != null)
            {
                // 카메라를 이 스크립트가 붙은 오브젝트의 자식으로 설정
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
            // 타겟 위치를 기준으로 카메라 위치 갱신
            _camera.transform.position
                = target.position + offset;
        }
    }
}
