using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using Mirror;

public class AI : NetworkBehaviour
{

    public GameObject AIObject;  // AI 오브젝트
    public Animator anim;         // Animator 컴포넌트
    private NavMeshAgent navMeshAgent; // NavMeshAgent 컴포넌트
    private BoxCollider rangeCollider; // 범위 오브젝트의 BoxCollider

    [SerializeField] private float minWaitTime = 3f; // 최소 대기 시간
    [SerializeField] private float maxWaitTime = 5f; // 최대 대기 시간

    public Animator DieTrigger;  // 죽음 애니메이터 트리거
    private bool isDead = false; // AI의 사망 상태

    [Server]
    private void Awake()
    {
        // NavMeshAgent와 Animator 컴포넌트를 가져옴
        navMeshAgent = GetComponent<NavMeshAgent>();
        anim = GetComponent<Animator>();
        DieTrigger = GetComponent<Animator>();

        // 초기화가 제대로 되었는지 확인
        if (navMeshAgent == null || anim == null || DieTrigger == null)
        {
            Debug.LogError("Required components are missing.");
        }
    }

    private void Start()
    {
        // rangeCollider가 null이 아닌지 확인 후 Initialize 호출
        if (rangeCollider != null)
        {
            Initialize(rangeCollider);
        }
        else
        {
            Debug.LogWarning("rangeCollider is not assigned.");
        }
    }

    private void Update()
    {
        // AI가 죽었다면 업데이트 하지 않음
        if (isDead) return;

        // NavMeshAgent가 null이 아닌지 확인
        if (navMeshAgent == null) return;

        // AI의 이동 상태에 따라 애니메이션 설정
        if (navMeshAgent.velocity.magnitude == 0)
        {
            anim.SetBool("Walk", false);
        }
        else
        {
            anim.SetBool("Walk", true);
        }
    }
    //-------------------------------------
    // AI의 죽음 처리
    public void Die()
    {
        // 이미 죽은 경우 처리 방지
        if (isDead) return;

        isDead = true; // 죽음 상태로 변경
        DieTrigger.SetTrigger("Die"); // 죽음 애니메이션 트리거
        StartCoroutine(DestroyAI()); // AI 제거 코루틴 시작
    }

    // BoxCollider로 초기화
    public void Initialize(BoxCollider collider)
    {
        rangeCollider = collider; // 범위 오브젝트의 BoxCollider를 설정
        StartCoroutine(MoveToRandomPosition()); // 이동 코루틴을 시작
    }

    // AI 제거 코루틴
    private IEnumerator DestroyAI()
    {
        float destroyTime = 5f; // 제거 대기 시간
        yield return new WaitForSeconds(destroyTime);
        if (AIObject != null)
        {
            AIObject.SetActive(false); // AI 오브젝트 비활성화
        }
        else
        {
            Debug.LogWarning("AIObject is not assigned.");
        }
    }

    // 무작위 위치로 이동하는 코루틴
    private IEnumerator MoveToRandomPosition()
    {
        // 이미 죽었거나 NavMeshAgent가 null이면 종료
        if (isDead) yield break;
        if (navMeshAgent == null) yield break;

        while (!isDead)
        {
            Vector3 randomPosition = GetRandomPositionOnNavMesh();
            transform.LookAt(randomPosition); // 목표 방향으로 회전
            navMeshAgent.SetDestination(randomPosition); // NavMeshAgent의 목표 위치 설정
            anim.SetBool("Walk", true); // 이동 애니메이션 활성화
            // 목표 위치까지 이동하는 동안 대기
            while (!navMeshAgent.pathPending && navMeshAgent.remainingDistance > navMeshAgent.stoppingDistance)
            {
                if (isDead) yield break;
                yield return null;
            }

            anim.SetBool("Walk", false); // 이동 애니메이션 비활성화

            float waitTime = Random.Range(minWaitTime, maxWaitTime); // 무작위 대기 시간
            float elapsed = 0f;
            while (elapsed < waitTime)
            {
                if (isDead) yield break;
                elapsed += Time.deltaTime; // 시간 경과
                yield return null;
            }
        }
    }

    // NavMesh에서 무작위 위치를 반환
    private Vector3 GetRandomPositionOnNavMesh()
    {
        Vector3 randomDirection = Random.insideUnitSphere * 20f; // 반지름이 20인 유닛 안에서 무작위 방향 벡터 생성
        randomDirection += transform.position; // 현재 위치를 기준으로 실제 목표 위치 계산
        NavMeshHit navMeshHit; // NavMesh 위의 위치 정보를 저장할 변수

        // NavMesh에서 위치 샘플링
        if (NavMesh.SamplePosition(randomDirection, out navMeshHit, 20f, NavMesh.AllAreas))
        {
            return navMeshHit.position; // 위치를 찾았으면 반환
        }
        else
        {
            return transform.position; // 위치를 찾지 못했으면 현재 위치 반환
        }
    }
}