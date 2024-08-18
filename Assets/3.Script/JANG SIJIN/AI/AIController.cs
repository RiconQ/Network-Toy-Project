using System.Collections;
using UnityEngine;
using UnityEngine.AI;
using Mirror;

public class AIController : NetworkBehaviour
{
    [SerializeField] private NavMeshAgent agent;
    [SerializeField] private Animator animator;

    [SerializeField] private float minMoveTime = 8f; // 최소 이동 시간
    [SerializeField] private float maxMoveTime = 20f; // 최대 이동 시간
    [SerializeField] private float idleTime = 2f; // 대기 시간
    [SerializeField] private float moveDistance = 20f; // 이동 거리

    [SyncVar] private float speed = 5f;

    private bool isMoving = false;
    private bool isDead = false; // AI가 죽었는지 여부

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
        while (!isDead)  // AI가 죽지 않은 동안에만 행동 루프 진행
        {
            yield return MoveRandomly();
            yield return new WaitForSeconds(idleTime);
        }
    }

    [Server]
    private IEnumerator MoveRandomly()
    {
        if (isDead) yield break; // AI가 죽었으면 이동하지 않음

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
        if (isDead) return; // 이미 죽었으면 중복 호출 방지

        isDead = true;
        PlayAnimation("Dead"); // Dead 애니메이션 재생
        StopAllCoroutines(); // 모든 코루틴 중지
        agent.isStopped = true; // NavMeshAgent 멈추기
        agent.ResetPath(); // 경로 초기화

        Debug.Log("AI 죽음 처리 완료");
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
