using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using Mirror;

public class AI : NetworkBehaviour
{
    public GameObject AIObject; // AI ������Ʈ ����
    public Animator anim; // AI �ִϸ��̼��� �����ϴ� Animator ������Ʈ
    private NavMeshAgent navMeshAgent; // AI�� �̵��� �����ϴ� NavMeshAgent ������Ʈ
    private BoxCollider rangeCollider; // AI�� �̵��� �� �ִ� ������ �����ϴ� BoxCollider

    [SerializeField] private float minWaitTime = 3f; // AI�� ���������� ����� �ּ� �ð�
    [SerializeField] private float maxWaitTime = 5f; // AI�� ���������� ����� �ִ� �ð�

    private bool isDead = false; // AI�� ���� ���¸� �����ϴ� ����

    private void Awake()
    {
        // Awake�� ��ü�� ������ �� ȣ��Ǹ�, �ʿ��� ������Ʈ�� �ʱ�ȭ�մϴ�.
        navMeshAgent = GetComponent<NavMeshAgent>(); // NavMeshAgent ������Ʈ�� �����ɴϴ�.
        anim = GetComponent<Animator>(); // Animator ������Ʈ�� �����ɴϴ�.
    }

    private void Start()
    {
        if (isServer)
        {
            Initialize(rangeCollider); // Initialize �޼��带 ȣ���Ͽ� AI�� �ʱ�ȭ�մϴ�.
        }
    }

    private void Update()
    {
        if (!isServer || isDead) return; // ������ �ƴϰų� AI�� ���� ��� ������Ʈ���� ����

        // AI�� �ӵ��� Ȯ���Ͽ� �ȱ� �ִϸ��̼��� �����մϴ�.
        if (navMeshAgent.velocity.magnitude == 0)
        {
            anim.SetBool("Walk", false); // AI�� �������� �ȱ� �ִϸ��̼��� ����ϴ�.
        }
        else
        {
            anim.SetBool("Walk", true); // AI�� �̵� ���̸� �ȱ� �ִϸ��̼��� ����մϴ�.
        }
    }

    public void Die()
    {
        if (!isServer || isDead) return; // ������ �ƴϰų� �̹� ���� ��� ����

        isDead = true; // AI�� ���¸� �������� �����մϴ�.
        anim.SetTrigger("Die"); // 'Die' Ʈ���Ÿ� Ȱ��ȭ�Ͽ� ���� �ִϸ��̼��� ����մϴ�.
        StartCoroutine(DestroyAI()); // AI�� �����ϴ� �ڷ�ƾ�� �����մϴ�.
    }

    public void Initialize(BoxCollider collider)
    {
        rangeCollider = collider; // AI�� �̵��� ������ �����մϴ�.
        StartCoroutine(MoveToRandomPosition()); // AI�� ���� ��ġ�� �̵��ϴ� �ڷ�ƾ�� �����մϴ�.
    }

    private IEnumerator DestroyAI()
    {
        float destroyTime = 5f; // AI�� ������� �� ��� �ð�
        yield return new WaitForSeconds(destroyTime); // ������ �ð���ŭ ���
        AIObject.SetActive(false); // AI ������Ʈ�� ��Ȱ��ȭ�Ͽ� ������� ��
    }

    private IEnumerator MoveToRandomPosition()
    {
        if (isDead) yield break; // AI�� �׾����� �ڷ�ƾ ����

        while (!isDead)
        {
            Vector3 randomPosition = GetRandomPositionOnNavMesh(); // NavMesh ���� ������ ��ġ�� ������
            navMeshAgent.SetDestination(randomPosition); // AI�� �ش� ��ġ�� �̵���Ŵ
            anim.SetBool("Walk", true); // �̵� �ִϸ��̼� ���

            // AI�� �������� ������ ������ ���
            while (!navMeshAgent.pathPending && navMeshAgent.remainingDistance > navMeshAgent.stoppingDistance)
            {
                if (isDead) yield break; // AI�� ������ �̵��� ����
                yield return null;
            }

            anim.SetBool("Walk", false); // �������� �����ϸ� �ȱ� �ִϸ��̼� ����

            // ��� �ð��� �����ϰ� ����
            float waitTime = Random.Range(minWaitTime, maxWaitTime);
            float elapsed = 0f;
            while (elapsed < waitTime)
            {
                if (isDead) yield break; // AI�� ������ ��⸦ ����
                elapsed += Time.deltaTime; // ��� �ð��� ������Ŵ
                yield return null;
            }
        }
    }

    private Vector3 GetRandomPositionOnNavMesh()
    {
        Vector3 randomDirection = Random.insideUnitSphere * 20f; // �ݰ� 20 ���� �ȿ��� ������ ���� ���͸� ����
        randomDirection += transform.position; // ���� ��ġ�� �������� ������ ������ ����

        NavMeshHit navMeshHit; // NavMeshHit ����ü�� �����Ͽ� ��ġ ������ ����

        // NavMesh ���� ��ȿ�� ��ġ�� ã��
        if (NavMesh.SamplePosition(randomDirection, out navMeshHit, 20f, NavMesh.AllAreas))
        {
            return navMeshHit.position; // ��ġ�� ã���� ��ȯ
        }
        else
        {
            return transform.position; // ��ġ�� ã�� ���ϸ� ���� ��ġ�� ��ȯ
        }
    }
}