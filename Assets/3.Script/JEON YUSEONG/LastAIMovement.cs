using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using Mirror;

public class LastAIMovement : NetworkBehaviour
{
    [SerializeField] private Animator moveAnim; // �̵� �ִϸ��̼�
    [SerializeField] private Animator dieAnim;  // ���� �ִϸ��̼�
    [SerializeField] private float minWaitTime = 3f; // �ּ� ��� �ð�
    [SerializeField] private float maxWaitTime = 5f; // �ִ� ��� �ð�
    [SerializeField] private float moveSpeed = 3.5f; // �̵� �ӵ�
    [SerializeField] private float rotationSpeed = 720f; // ȸ�� �ӵ�

    [SyncVar] private Vector3 targetPosition; // ��ǥ ��ġ
    [SyncVar] private bool isMoving = false; // �̵� ����
    [SyncVar] private bool isDead = false; // ���� ����

    private void Start()
    {
        if (isServer)
        {
            StartCoroutine(RandomAiMove()); // ���������� AI �̵� �ڷ�ƾ ����
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
            RpcUpdateTargetPosition(targetPosition); // Ŭ���̾�Ʈ�� ��ǥ ��ġ ����ȭ

            isMoving = true;
            RpcSetIsMoving(true);

            while (Vector3.Distance(transform.position, targetPosition) > 0.1f)
            {
                if (isDead) yield break;

                Vector3 direction = (targetPosition - transform.position).normalized;
                direction.y = 0; // y�� ������ 0���� �����Ͽ� 2D ��鿡���� �̵��ϵ��� ��
                Quaternion toRotation = Quaternion.LookRotation(direction);
                transform.rotation = Quaternion.RotateTowards(transform.rotation, toRotation, rotationSpeed * Time.deltaTime);

                // �̵� ó��
                transform.position = Vector3.MoveTowards(transform.position, targetPosition, moveSpeed * Time.deltaTime);

                RpcUpdatePosition(transform.position, transform.rotation); // Ŭ���̾�Ʈ�� ��ġ �� ȸ�� ����ȭ

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
        randomDirection.y = 0; // y���� �����Ͽ� 2D ��鿡���� �̵��ϵ��� ��
        randomDirection += transform.position; // ���� ��ġ�� �������� ��ǥ ��ġ ����

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