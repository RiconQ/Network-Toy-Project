using System.Collections;
using UnityEngine;
using UnityEngine.AI;
using Mirror;

public class AIController : NetworkBehaviour
{
    [SerializeField] private NavMeshAgent agent;
    [SerializeField] private Animator animator;

    [SerializeField] private float minMoveTime = 8f; // �ּ� �̵� �ð�
    [SerializeField] private float maxMoveTime = 20f; // �ִ� �̵� �ð�
    [SerializeField] private float idleTime = 2f; // ��� �ð�
    [SerializeField] private float moveDistance = 20f; // �̵� �Ÿ�

    [SyncVar] private float speed = 5f;

    private bool isMoving = false;
    private bool isDead = false; // AI�� �׾����� ����

    public override void OnStartServer()
    {
        agent = GetComponent<NavMeshAgent>();
        animator = GetComponent<Animator>();

        agent.speed = speed;

        StartCoroutine(AIBehaviourLoop());
    }

    [Server]
    private IEnumerator AIBehaviourLoop()
    {
        while (!isDead)  // AI�� ���� ���� ���ȿ��� �ൿ ���� ����
        {
            yield return MoveRandomly();
            yield return new WaitForSeconds(idleTime);
        }
    }

    [Server]
    private IEnumerator MoveRandomly()
    {
        if (isDead) yield break; // AI�� �׾����� �̵����� ����

        isMoving = true;
        PlayAnimation("Walk");

        Vector3 direction = GetRandomDirection();
        Vector3 destination = transform.position + direction * moveDistance;

        NavMeshHit hit;
        if (NavMesh.SamplePosition(destination, out hit, 10f, NavMesh.AllAreas))
        {
            Vector3 finalPosition = hit.position;
            agent.SetDestination(finalPosition);

            float moveDuration = Random.Range(minMoveTime, maxMoveTime);
            float elapsedTime = 0f;

            while (elapsedTime < moveDuration)
            {
                if (agent.pathPending || agent.remainingDistance > agent.stoppingDistance)
                {
                    elapsedTime += Time.deltaTime;
                }
                else
                {
                    break;
                }

                yield return null;
            }
        }

        PlayAnimation("Idle");
        agent.ResetPath();
        isMoving = false;
    }

    [Server]
    public void Dead()
    {
        if (isDead) return; // �̹� �׾����� �ߺ� ȣ�� ����

        isDead = true;
        PlayAnimation("Dead"); // Dead �ִϸ��̼� ���
        StopAllCoroutines(); // ��� �ڷ�ƾ ����
        agent.isStopped = true; // NavMeshAgent ���߱�
        agent.ResetPath(); // ��� �ʱ�ȭ

        Debug.Log("AI ���� ó�� �Ϸ�");
    }

    private Vector3 GetRandomDirection()
    {
        float randomValue = Random.value;
        if (randomValue < 0.25f) return Vector3.forward;
        if (randomValue < 0.5f) return Vector3.back;
        if (randomValue < 0.75f) return Vector3.left;
        return Vector3.right;
    }

    protected void PlayAnimation(string animationClip)
    {
        AnimatorStateInfo stateInfo = animator.GetCurrentAnimatorStateInfo(0);
        if (!stateInfo.IsName(animationClip))
        {
            animator.CrossFadeInFixedTime(animationClip, 0f);
        }
    }
}
