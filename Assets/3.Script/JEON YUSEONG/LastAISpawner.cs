using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using Mirror;

public class LastAISpawner : NetworkBehaviour
{
    [SerializeField] private GameObject aiPrefab; // 생성할 AI 오브젝트의 프리팹
    [SerializeField] private GameObject rangeObject; // 맵의 범위를 정의하는 오브젝트
    [SerializeField] private int numberOfAIs = 60; // 생성할 AI 오브젝트의 개수

    private BoxCollider rangeCollider; // 범위 오브젝트의 BoxCollider

    // 서버에서만 호출되는 초기화 메서드
    public override void OnStartServer()
    {
        // 서버가 시작될 때 AI를 스폰
        SpawnAI();
    }

    // 서버에서만 호출되는 메서드
    [Server]
    private void Awake()
    {
        if (rangeObject == null)
        {
            Debug.LogError("rangeObject is not assigned.");
            return;
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

    // 서버에서 AI를 생성하는 메서드
    [Server]
    public void SpawnAI()
    {
        if (rangeCollider == null || aiPrefab == null)
        {
            Debug.LogError("Cannot spawn AI. Missing required components.");
            return;
        }

        for (int i = 0; i < numberOfAIs; i++)
        {
            Vector3 spawnPosition = GeneratePosition();
            if (spawnPosition != Vector3.zero)
            {
                GameObject aiObject = Instantiate(aiPrefab, spawnPosition, Quaternion.identity);
                NetworkServer.Spawn(aiObject);
                Debug.Log("AI spawned at: " + spawnPosition);

                // `LastAIMovement` 스크립트가 포함된 AI 오브젝트에 대한 초기화
                LastAIMovement aiScript = aiObject.GetComponent<LastAIMovement>();
                if (aiScript != null)
                {
                    // AI 스크립트가 필요한 경우 추가적인 초기화 코드 작성
                }
                else
                {
                    Debug.LogWarning("LastAIMovement script not found on the spawned object.");
                }
            }
            else
            {
                Debug.LogWarning("Failed to generate a valid position.");
            }
        }
    }

    // 지정된 범위 내에서 랜덤한 위치를 생성하는 메서드
    private Vector3 GeneratePosition()
    {
        if (rangeCollider == null || rangeObject == null)
        {
            Debug.LogError("rangeCollider or rangeObject is not assigned.");
            return Vector3.zero; // 잘못된 위치 반환
        }

        Vector3 originPosition = rangeObject.transform.position; // 범위의 중앙 위치
        float range_X = rangeCollider.bounds.size.x; // 범위의 X축 크기
        float range_Z = rangeCollider.bounds.size.z; // 범위의 Z축 크기

        // X축과 Z축에서 랜덤값 추출
        float randomX = Random.Range(-range_X / 2, range_X / 2);
        float randomZ = Random.Range(-range_Z / 2, range_Z / 2);

        return originPosition + new Vector3(randomX, 0f, randomZ); // Y축을 0으로 설정하여 2D 평면에서만 이동
    }
}