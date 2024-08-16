using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using Mirror;

public class AISpawn : NetworkBehaviour
{
    [SerializeField] private GameObject aiPrefab; // 생성할 AI 오브젝트의 프리팹
    [SerializeField] private GameObject rangeObject; // 맵의 범위를 정의하는 오브젝트
    [SerializeField] private int numberOfAIs = 60; // 생성할 AI 오브젝트의 개수

    private BoxCollider rangeCollider; // 범위 오브젝트의 BoxCollider

    public override void OnStartServer()
    {
        // 서버가 시작될 때 NPC 스폰
        SpawnAI();
    }

    [Server]
    private void Awake()
    {
        // rangeObject와 rangeCollider의 할당 상태를 확인합니다.
        if (rangeObject == null)
        {
            Debug.LogError("rangeObject is not assigned.");
            return; // 범위 오브젝트가 없는 경우, 실행을 멈춥니다.
        }

        rangeCollider = rangeObject.GetComponent<BoxCollider>();
        if (rangeCollider == null)
        {
            Debug.LogError("BoxCollider is missing from rangeObject.");
        }

        if (aiPrefab == null)
        {
            Debug.LogError("aiPrefab is not assigned.");
        }
    }

    public void SpawnAI()
    {
        if (rangeCollider == null || aiPrefab == null)
        {
            Debug.LogError("Cannot spawn AI. Missing required components.");
            return;
        }

        // 지정된 개수만큼 AI 오브젝트를 생성합니다.
        for (int i = 0; i < numberOfAIs; i++)
        {
            Vector3 spawnPosition = GeneratePosition();
            if (spawnPosition != Vector3.zero) // 위치가 유효한 경우
            {
                GameObject aiObject = Instantiate(aiPrefab, spawnPosition, Random.rotation);
                NetworkServer.Spawn(aiObject);
                Debug.Log("AI spawned at: " + spawnPosition);

                AI aiScript = aiObject.GetComponent<AI>();
                if (aiScript != null)
                {
                    aiScript.Initialize(rangeCollider);
                }
                else
                {
                    Debug.LogWarning("AI script not found on the spawned object.");
                }
            }
            else
            {
                Debug.LogWarning("Failed to generate a valid position.");
            }
        }
    }

    private Vector3 GeneratePosition()
    {
        // rangeObject와 rangeCollider가 올바르게 설정되었는지 확인
        if (rangeCollider == null || rangeObject == null)
        {
            Debug.LogError("rangeCollider or rangeObject is not assigned.");
            return Vector3.zero; // 잘못된 위치 반환
        }

        Vector3 originPosition = rangeObject.transform.position; // 오브젝트의 중앙 위치를 가져옴
        float range_X = rangeCollider.bounds.size.x; // BoxCollider의 X축 크기를 가져옴
        float range_Z = rangeCollider.bounds.size.z; // BoxCollider의 Z축 크기를 가져옴

        // X축과 Z축에서 랜덤값 추출
        float randomX = Random.Range(-range_X / 2, range_X / 2);
        float randomZ = Random.Range(-range_Z / 2, range_Z / 2);

        // 랜덤 위치를 계산하여 반환
        return originPosition + new Vector3(randomX, 0f, randomZ);
    }
}