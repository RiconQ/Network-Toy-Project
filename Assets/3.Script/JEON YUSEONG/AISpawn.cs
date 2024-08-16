using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using Mirror;

public class AISpawn : NetworkBehaviour
{
    [SerializeField] private GameObject aiPrefab; // ������ AI ������Ʈ�� ������
    [SerializeField] private GameObject rangeObject; // ���� ������ �����ϴ� ������Ʈ
    [SerializeField] private int numberOfAIs = 60; // ������ AI ������Ʈ�� ����

    private BoxCollider rangeCollider; // ���� ������Ʈ�� BoxCollider

    public override void OnStartServer()
    {
        // ������ ���۵� �� NPC ����
        SpawnAI();
    }

    [Server]
    private void Awake()
    {
        // rangeObject�� rangeCollider�� �Ҵ� ���¸� Ȯ���մϴ�.
        if (rangeObject == null)
        {
            Debug.LogError("rangeObject is not assigned.");
            return; // ���� ������Ʈ�� ���� ���, ������ ����ϴ�.
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

        // ������ ������ŭ AI ������Ʈ�� �����մϴ�.
        for (int i = 0; i < numberOfAIs; i++)
        {
            Vector3 spawnPosition = GeneratePosition();
            if (spawnPosition != Vector3.zero) // ��ġ�� ��ȿ�� ���
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
        // rangeObject�� rangeCollider�� �ùٸ��� �����Ǿ����� Ȯ��
        if (rangeCollider == null || rangeObject == null)
        {
            Debug.LogError("rangeCollider or rangeObject is not assigned.");
            return Vector3.zero; // �߸��� ��ġ ��ȯ
        }

        Vector3 originPosition = rangeObject.transform.position; // ������Ʈ�� �߾� ��ġ�� ������
        float range_X = rangeCollider.bounds.size.x; // BoxCollider�� X�� ũ�⸦ ������
        float range_Z = rangeCollider.bounds.size.z; // BoxCollider�� Z�� ũ�⸦ ������

        // X��� Z�࿡�� ������ ����
        float randomX = Random.Range(-range_X / 2, range_X / 2);
        float randomZ = Random.Range(-range_Z / 2, range_Z / 2);

        // ���� ��ġ�� ����Ͽ� ��ȯ
        return originPosition + new Vector3(randomX, 0f, randomZ);
    }
}