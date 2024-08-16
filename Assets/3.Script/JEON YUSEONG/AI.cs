using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using Mirror;

public class AI : NetworkBehaviour
{

    public GameObject AIObject;  // AI ������Ʈ
    public Animator anim;         // Animator ������Ʈ
    private NavMeshAgent navMeshAgent; // NavMeshAgent ������Ʈ
    private BoxCollider rangeCollider; // ���� ������Ʈ�� BoxCollider

    [SerializeField] private float minWaitTime = 3f; // �ּ� ��� �ð�
    [SerializeField] private float maxWaitTime = 5f; // �ִ� ��� �ð�

    public Animator DieTrigger;  // ���� �ִϸ����� Ʈ����
    private bool isDead = false; // AI�� ��� ����

    [Server]
    private void Awake()
    {
        // NavMeshAgent�� Animator ������Ʈ�� ������
        navMeshAgent = GetComponent<NavMeshAgent>();
        anim = GetComponent<Animator>();
        DieTrigger = GetComponent<Animator>();

        // �ʱ�ȭ�� ����� �Ǿ����� Ȯ��
        if (navMeshAgent == null || anim == null || DieTrigger == null)
        {
            Debug.LogError("Required components are missing.");
        }
    }

    private void Start()
    {
        // rangeCollider�� null�� �ƴ��� Ȯ�� �� Initialize ȣ��
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
        // AI�� �׾��ٸ� ������Ʈ ���� ����
        if (isDead) return;

        // NavMeshAgent�� null�� �ƴ��� Ȯ��
        if (navMeshAgent == null) return;

        // AI�� �̵� ���¿� ���� �ִϸ��̼� ����
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
    // AI�� ���� ó��
    public void Die()
    {
        // �̹� ���� ��� ó�� ����
        if (isDead) return;

        isDead = true; // ���� ���·� ����
        DieTrigger.SetTrigger("Die"); // ���� �ִϸ��̼� Ʈ����
        StartCoroutine(DestroyAI()); // AI ���� �ڷ�ƾ ����
    }

    // BoxCollider�� �ʱ�ȭ
    public void Initialize(BoxCollider collider)
    {
        rangeCollider = collider; // ���� ������Ʈ�� BoxCollider�� ����
        StartCoroutine(MoveToRandomPosition()); // �̵� �ڷ�ƾ�� ����
    }

    // AI ���� �ڷ�ƾ
    private IEnumerator DestroyAI()
    {
        float destroyTime = 5f; // ���� ��� �ð�
        yield return new WaitForSeconds(destroyTime);
        if (AIObject != null)
        {
            AIObject.SetActive(false); // AI ������Ʈ ��Ȱ��ȭ
        }
        else
        {
            Debug.LogWarning("AIObject is not assigned.");
        }
    }

    // ������ ��ġ�� �̵��ϴ� �ڷ�ƾ
    private IEnumerator MoveToRandomPosition()
    {
        // �̹� �׾��ų� NavMeshAgent�� null�̸� ����
        if (isDead) yield break;
        if (navMeshAgent == null) yield break;

        while (!isDead)
        {
            Vector3 randomPosition = GetRandomPositionOnNavMesh();
            transform.LookAt(randomPosition); // ��ǥ �������� ȸ��
            navMeshAgent.SetDestination(randomPosition); // NavMeshAgent�� ��ǥ ��ġ ����
            anim.SetBool("Walk", true); // �̵� �ִϸ��̼� Ȱ��ȭ
            // ��ǥ ��ġ���� �̵��ϴ� ���� ���
            while (!navMeshAgent.pathPending && navMeshAgent.remainingDistance > navMeshAgent.stoppingDistance)
            {
                if (isDead) yield break;
                yield return null;
            }

            anim.SetBool("Walk", false); // �̵� �ִϸ��̼� ��Ȱ��ȭ

            float waitTime = Random.Range(minWaitTime, maxWaitTime); // ������ ��� �ð�
            float elapsed = 0f;
            while (elapsed < waitTime)
            {
                if (isDead) yield break;
                elapsed += Time.deltaTime; // �ð� ���
                yield return null;
            }
        }
    }

    // NavMesh���� ������ ��ġ�� ��ȯ
    private Vector3 GetRandomPositionOnNavMesh()
    {
        Vector3 randomDirection = Random.insideUnitSphere * 20f; // �������� 20�� ���� �ȿ��� ������ ���� ���� ����
        randomDirection += transform.position; // ���� ��ġ�� �������� ���� ��ǥ ��ġ ���
        NavMeshHit navMeshHit; // NavMesh ���� ��ġ ������ ������ ����

        // NavMesh���� ��ġ ���ø�
        if (NavMesh.SamplePosition(randomDirection, out navMeshHit, 20f, NavMesh.AllAreas))
        {
            return navMeshHit.position; // ��ġ�� ã������ ��ȯ
        }
        else
        {
            return transform.position; // ��ġ�� ã�� �������� ���� ��ġ ��ȯ
        }
    }
}