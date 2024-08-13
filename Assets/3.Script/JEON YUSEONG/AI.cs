using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class AI : MonoBehaviour
{
    private NavMeshAgent navMeshAgent;
    private BoxCollider rangeCollider;
    [SerializeField] private float minWaitTime = 0f;
    // 최소 대기 시간
    [SerializeField] private float maxWaitTime = 2f;
    // 최대 대기 시간

    private void Awake()
    {
        navMeshAgent = GetComponent<NavMeshAgent>();
        // NavMeshAgent 컴포넌트를 가져옴
    }

    public void Initialize(BoxCollider collider)
    {
        rangeCollider = collider;
        // 범위 오브젝트의 BoxCollider를 설정
        StartCoroutine(MoveToRandomPosition());
        // 이동 코루틴을 시작
    }

    private IEnumerator MoveToRandomPosition()
    {
        while (true)
        {
            Vector3 randomPosition = GetRandomPositionOnNavMesh();
            navMeshAgent.SetDestination(randomPosition);

            // 에이전트가 목표 위치에 도착할 때까지 기다립니다.
            while (!navMeshAgent.pathPending && navMeshAgent.remainingDistance > navMeshAgent.stoppingDistance)
            {
                yield return null; // 프레임마다 반복합니다.
            }

            // 0~maxWaitTime 사이에서 무작위 대기 시간을 선택합니다.
            float waitTime = Random.Range(minWaitTime, maxWaitTime);
            yield return new WaitForSeconds(waitTime); // 대기 시간을 기다립니다.
        }
    }

    private Vector3 GetRandomPositionOnNavMesh()
    {
        Vector3 randomDirection = Random.insideUnitSphere * 20f;
        // 반지름이 20인 유닛 안에서 무작위 방향 벡터를 생성
        randomDirection += transform.position;
        // 에이전트의 현재 위치를 기준으로 실제 이동할 목표 위치를 계산
        NavMeshHit navMeshHit;
        // NavMesh 위의 위치 정보를 저장할 변수
        if (NavMesh.SamplePosition(randomDirection, out navMeshHit, 20f, NavMesh.AllAreas))
        // NavMesh의 포지션을 지정 (무작위의 방향 벡터에서 저장할 변수를 찾는다 20f의 NavMesh의 전역에서)
        {
            return navMeshHit.position;
            // 위치를 찾았으면 반환한다.
        }
        else
        {
            return transform.position;
            // 위치를 찾지 못하였으면 에이전트가 이동하지 못하도록 현재 위치를 반환한다.
        }
    }
}