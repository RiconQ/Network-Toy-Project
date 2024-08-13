using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class AI : MonoBehaviour
{
    private NavMeshAgent navMeshAgent;
    private BoxCollider rangeCollider;
    [SerializeField] private float minWaitTime = 0f;
    // �ּ� ��� �ð�
    [SerializeField] private float maxWaitTime = 2f;
    // �ִ� ��� �ð�

    private void Awake()
    {
        navMeshAgent = GetComponent<NavMeshAgent>();
        // NavMeshAgent ������Ʈ�� ������
    }

    public void Initialize(BoxCollider collider)
    {
        rangeCollider = collider;
        // ���� ������Ʈ�� BoxCollider�� ����
        StartCoroutine(MoveToRandomPosition());
        // �̵� �ڷ�ƾ�� ����
    }

    private IEnumerator MoveToRandomPosition()
    {
        while (true)
        {
            Vector3 randomPosition = GetRandomPositionOnNavMesh();
            navMeshAgent.SetDestination(randomPosition);

            // ������Ʈ�� ��ǥ ��ġ�� ������ ������ ��ٸ��ϴ�.
            while (!navMeshAgent.pathPending && navMeshAgent.remainingDistance > navMeshAgent.stoppingDistance)
            {
                yield return null; // �����Ӹ��� �ݺ��մϴ�.
            }

            // 0~maxWaitTime ���̿��� ������ ��� �ð��� �����մϴ�.
            float waitTime = Random.Range(minWaitTime, maxWaitTime);
            yield return new WaitForSeconds(waitTime); // ��� �ð��� ��ٸ��ϴ�.
        }
    }

    private Vector3 GetRandomPositionOnNavMesh()
    {
        Vector3 randomDirection = Random.insideUnitSphere * 20f;
        // �������� 20�� ���� �ȿ��� ������ ���� ���͸� ����
        randomDirection += transform.position;
        // ������Ʈ�� ���� ��ġ�� �������� ���� �̵��� ��ǥ ��ġ�� ���
        NavMeshHit navMeshHit;
        // NavMesh ���� ��ġ ������ ������ ����
        if (NavMesh.SamplePosition(randomDirection, out navMeshHit, 20f, NavMesh.AllAreas))
        // NavMesh�� �������� ���� (�������� ���� ���Ϳ��� ������ ������ ã�´� 20f�� NavMesh�� ��������)
        {
            return navMeshHit.position;
            // ��ġ�� ã������ ��ȯ�Ѵ�.
        }
        else
        {
            return transform.position;
            // ��ġ�� ã�� ���Ͽ����� ������Ʈ�� �̵����� ���ϵ��� ���� ��ġ�� ��ȯ�Ѵ�.
        }
    }
}