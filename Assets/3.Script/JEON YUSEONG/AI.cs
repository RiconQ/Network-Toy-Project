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
    // �ּ� ��� �ð�
    [SerializeField] private float maxWaitTime = 5f;
    // �ִ� ��� �ð�
    public Animator DieTrigger; 
    private bool isDead = false;

    private void Awake()
    {
        navMeshAgent = GetComponent<NavMeshAgent>();
        // NavMeshAgent ������Ʈ�� ������
        anim = GetComponent<Animator>();
        DieTrigger = GetComponent<Animator>();
    }
    private void Start()
    {
        Initialize(rangeCollider); // Initialize ȣ��
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
        // ���� ������Ʈ�� BoxCollider�� ����
        StartCoroutine(MoveToRandomPosition());
        // �̵� �ڷ�ƾ�� ����
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