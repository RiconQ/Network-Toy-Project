using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class AI : MonoBehaviour
{
    public GameObject AIObject;
    public Animator anim;
    private NavMeshAgent navMeshAgent;
    private BoxCollider rangeCollider;
    [SerializeField] private float minWaitTime = 3f;
    // 최소 대기 시간
    [SerializeField] private float maxWaitTime = 5f;
    // 최대 대기 시간
    public Animator DieTrigger; 
    private bool isDead = false;

    private void Awake()
    {
        navMeshAgent = GetComponent<NavMeshAgent>();
        // NavMeshAgent 컴포넌트를 가져옴
        anim = GetComponent<Animator>();
        DieTrigger = GetComponent<Animator>();
    }
    private void Start()
    {
        Initialize(rangeCollider); // Initialize 호출
    }
    private void Update()
    {
        if (isDead) return;
        
        if (navMeshAgent.velocity.magnitude ==0)
        {
            anim.SetBool("Walk", false);
        }
        else
        {
            anim.SetBool("Walk", true);
        }

    }
    public void Die()
    {
        if (isDead) return;

        isDead = true;
        DieTrigger.SetTrigger("Die");
        StartCoroutine(DestroyAI());
    }

    public void Initialize(BoxCollider collider)
    {
        rangeCollider = collider;
        // 범위 오브젝트의 BoxCollider를 설정
        StartCoroutine(MoveToRandomPosition());
        // 이동 코루틴을 시작
    }
    private IEnumerator DestroyAI()
    {
        float destroyTime = 5f;
        yield return new WaitForSeconds(destroyTime);
        AIObject.SetActive(false);
    }
    private IEnumerator MoveToRandomPosition()
    {if (isDead) yield break;
        while (!isDead)
        {
            Vector3 randomPosition = GetRandomPositionOnNavMesh();
            transform.LookAt(randomPosition);
            navMeshAgent.SetDestination(randomPosition);
            anim.SetBool("Walk", true);

            while (!navMeshAgent.pathPending && navMeshAgent.remainingDistance > navMeshAgent.stoppingDistance)
            {
                if (isDead) yield break;
                yield return null;
            }

            anim.SetBool("Walk", false);
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