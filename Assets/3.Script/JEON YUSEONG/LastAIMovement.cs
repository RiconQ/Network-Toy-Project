using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using Mirror;

public class LastAIMovement : NetworkBehaviour
{
    [SerializeField] private Animator moveAnim; // 이동 애니메이션
    [SerializeField] private Animator dieAnim;  // 죽음 애니메이션
    [SerializeField] private float minWaitTime = 3f; // 최소 대기 시간
    [SerializeField] private float maxWaitTime = 5f; // 최대 대기 시간
    [SerializeField] private float moveSpeed = 3.5f; // 이동 속도
    [SerializeField] private float rotationSpeed = 720f; // 회전 속도

    [SyncVar] private Vector3 targetPosition; // 목표 위치
    [SyncVar] private bool isMoving = false; // 이동 상태
    [SyncVar] private bool isDead = false; // 죽음 상태

    private void Start()
    {
        if (isServer)
        {
            StartCoroutine(RandomAiMove()); // 서버에서만 AI 이동 코루틴 시작
        }
    }

    [Server]
    private IEnumerator RandomAiMove()
    {
        if (isDead)
            yield break;

        while (!isDead)
        {
            targetPosition = GetRandomPosition();
            RpcUpdateTargetPosition(targetPosition); // 클라이언트로 목표 위치 동기화

            isMoving = true;
            RpcSetIsMoving(true);

            while (Vector3.Distance(transform.position, targetPosition) > 0.1f)
            {
                if (isDead) yield break;

                Vector3 direction = (targetPosition - transform.position).normalized;
                direction.y = 0; // y축 방향을 0으로 설정하여 2D 평면에서만 이동하도록 함
                Quaternion toRotation = Quaternion.LookRotation(direction);
                transform.rotation = Quaternion.RotateTowards(transform.rotation, toRotation, rotationSpeed * Time.deltaTime);

                // 이동 처리
                transform.position = Vector3.MoveTowards(transform.position, targetPosition, moveSpeed * Time.deltaTime);

                RpcUpdatePosition(transform.position, transform.rotation); // 클라이언트로 위치 및 회전 동기화

                yield return null;
            }

            isMoving = false;
            RpcSetIsMoving(false);

            float waitTime = Random.Range(minWaitTime, maxWaitTime);
            float elapsed = 0f;

            while (elapsed < waitTime)
            {
                if (isDead) yield break;
                elapsed += Time.deltaTime;
                yield return null;
            }
        }
    }

    private Vector3 GetRandomPosition()
    {
        Vector3 randomDirection = Random.insideUnitSphere * 20f;
        randomDirection.y = 0; // y축을 고정하여 2D 평면에서만 이동하도록 함
        randomDirection += transform.position; // 현재 위치를 기준으로 목표 위치 설정

        return randomDirection;
    }

    [ClientRpc]
    private void RpcUpdateTargetPosition(Vector3 newPosition)
    {
        targetPosition = newPosition;
    }

    [ClientRpc]
    private void RpcUpdatePosition(Vector3 newPosition, Quaternion newRotation)
    {
        if (!isServer)
        {
            transform.position = newPosition;
            transform.rotation = newRotation;
        }
    }

    [ClientRpc]
    private void RpcSetIsMoving(bool moving)
    {
        isMoving = moving;
        moveAnim.SetBool("Walk", moving);
    }
}