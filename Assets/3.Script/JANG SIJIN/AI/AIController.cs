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
        while (true)
        {
            yield return MoveRandomly();  // 랜덤 방향으로 이동
            yield return new WaitForSeconds(idleTime);  // 대기
        }
    }

    [Server]
    private IEnumerator MoveRandomly()
    {
        isMoving = true;
        PlayAnimation("Walk");

        // 상하좌우대각선 방향 중 랜덤 선택
        Vector3 direction = GetRandomDirection();
        Vector3 destination = transform.position + direction * moveDistance;

        NavMeshHit hit;
        // NavMesh 상에서 이동 가능한 위치를 찾음
        if (NavMesh.SamplePosition(destination, out hit, 10f, NavMesh.AllAreas))
        {
            Vector3 finalPosition = hit.position;
            Debug.Log($"Setting destination to: {finalPosition}");

            agent.SetDestination(finalPosition);

            float moveDuration = Random.Range(minMoveTime, maxMoveTime);
            float elapsedTime = 0f;

            // 이동 시간 동안 AI가 목적지로 이동
            while (elapsedTime < moveDuration)
            {
                // 목표까지의 거리와 에이전트의 경로 상태를 확인
                if (agent.pathPending || agent.remainingDistance > agent.stoppingDistance)
                {
                    elapsedTime += Time.deltaTime;
                }
                else
                {
                    // 목표에 도달하면 이동을 완료
                    break;
                }

                yield return null;
            }

            Debug.Log("Move duration ended.");
        }
        else
        {
            Debug.LogWarning("Failed to find a valid position on the NavMesh.");
        }

        PlayAnimation("Idle");
        agent.ResetPath();
        isMoving = false;
    }

    // 랜덤 방향을 반환하는 메서드
    private Vector3 GetRandomDirection()
    {
        float randomValue = Random.value;
        if (randomValue < 0.25f) return Vector3.forward;  // 전진
        if (randomValue < 0.5f) return Vector3.back;     // 후진
        if (randomValue < 0.75f) return Vector3.left;     // 왼쪽
        return Vector3.right;                           // 오른쪽
    }

    protected void PlayAnimation(string animationClip)
    {
        AnimatorStateInfo stateInfo = animator.GetCurrentAnimatorStateInfo(0);
        if (!stateInfo.IsName(animationClip))
        {
            animator.CrossFadeInFixedTime(animationClip, 0f); // 애니메이션을 고정된 시간 내에 전환
        }
    }
}
