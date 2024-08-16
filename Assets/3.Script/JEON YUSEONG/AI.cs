using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using Mirror;

public class AI : NetworkBehaviour
{
    public GameObject AIObject; // AI 오브젝트 참조
    public Animator anim; // AI 애니메이션을 제어하는 Animator 컴포넌트
    private NavMeshAgent navMeshAgent; // AI의 이동을 제어하는 NavMeshAgent 컴포넌트
    private BoxCollider rangeCollider; // AI가 이동할 수 있는 범위를 설정하는 BoxCollider

    [SerializeField] private float minWaitTime = 3f; // AI가 목적지에서 대기할 최소 시간
    [SerializeField] private float maxWaitTime = 5f; // AI가 목적지에서 대기할 최대 시간

    private bool isDead = false; // AI의 생사 상태를 추적하는 변수

    private void Awake()
    {
        // Awake는 객체가 생성될 때 호출되며, 필요한 컴포넌트를 초기화합니다.
        navMeshAgent = GetComponent<NavMeshAgent>(); // NavMeshAgent 컴포넌트를 가져옵니다.
        anim = GetComponent<Animator>(); // Animator 컴포넌트를 가져옵니다.
    }

    private void Start()
    {
        if (isServer)
        {
            Initialize(rangeCollider); // Initialize 메서드를 호출하여 AI를 초기화합니다.
        }
    }

    private void Update()
    {
        if (!isServer || isDead) return; // 서버가 아니거나 AI가 죽은 경우 업데이트하지 않음

        // AI의 속도를 확인하여 걷기 애니메이션을 제어합니다.
        if (navMeshAgent.velocity.magnitude == 0)
        {
            anim.SetBool("Walk", false); // AI가 멈췄으면 걷기 애니메이션을 멈춥니다.
        }
        else
        {
            anim.SetBool("Walk", true); // AI가 이동 중이면 걷기 애니메이션을 재생합니다.
        }
    }

    public void Die()
    {
        if (!isServer || isDead) return; // 서버가 아니거나 이미 죽은 경우 종료

        isDead = true; // AI의 상태를 죽음으로 설정합니다.
        anim.SetTrigger("Die"); // 'Die' 트리거를 활성화하여 죽음 애니메이션을 재생합니다.
        StartCoroutine(DestroyAI()); // AI를 제거하는 코루틴을 시작합니다.
    }

    public void Initialize(BoxCollider collider)
    {
        rangeCollider = collider; // AI가 이동할 범위를 설정합니다.
        StartCoroutine(MoveToRandomPosition()); // AI가 랜덤 위치로 이동하는 코루틴을 시작합니다.
    }

    private IEnumerator DestroyAI()
    {
        float destroyTime = 5f; // AI가 사라지기 전 대기 시간
        yield return new WaitForSeconds(destroyTime); // 설정된 시간만큼 대기
        AIObject.SetActive(false); // AI 오브젝트를 비활성화하여 사라지게 함
    }

    private IEnumerator MoveToRandomPosition()
    {
        if (isDead) yield break; // AI가 죽었으면 코루틴 종료

        while (!isDead)
        {
            Vector3 randomPosition = GetRandomPositionOnNavMesh(); // NavMesh 위의 무작위 위치를 가져옴
            navMeshAgent.SetDestination(randomPosition); // AI를 해당 위치로 이동시킴
            anim.SetBool("Walk", true); // 이동 애니메이션 재생

            // AI가 목적지에 도착할 때까지 대기
            while (!navMeshAgent.pathPending && navMeshAgent.remainingDistance > navMeshAgent.stoppingDistance)
            {
                if (isDead) yield break; // AI가 죽으면 이동을 멈춤
                yield return null;
            }

            anim.SetBool("Walk", false); // 목적지에 도착하면 걷기 애니메이션 멈춤

            // 대기 시간을 랜덤하게 설정
            float waitTime = Random.Range(minWaitTime, maxWaitTime);
            float elapsed = 0f;
            while (elapsed < waitTime)
            {
                if (isDead) yield break; // AI가 죽으면 대기를 멈춤
                elapsed += Time.deltaTime; // 경과 시간을 증가시킴
                yield return null;
            }
        }
    }

    private Vector3 GetRandomPositionOnNavMesh()
    {
        Vector3 randomDirection = Random.insideUnitSphere * 20f; // 반경 20 유닛 안에서 무작위 방향 벡터를 생성
        randomDirection += transform.position; // 현재 위치를 기준으로 무작위 방향을 설정

        NavMeshHit navMeshHit; // NavMeshHit 구조체를 선언하여 위치 정보를 저장

        // NavMesh 위의 유효한 위치를 찾음
        if (NavMesh.SamplePosition(randomDirection, out navMeshHit, 20f, NavMesh.AllAreas))
        {
            return navMeshHit.position; // 위치를 찾으면 반환
        }
        else
        {
            return transform.position; // 위치를 찾지 못하면 현재 위치를 반환
        }
    }
}