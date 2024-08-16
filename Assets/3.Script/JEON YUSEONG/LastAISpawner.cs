using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using Mirror;

public class LastAISpawner : NetworkBehaviour
{
    [SerializeField] private GameObject aiPrefab; // ������ AI ������Ʈ�� ������
    [SerializeField] private GameObject rangeObject; // ���� ������ �����ϴ� ������Ʈ
    [SerializeField] private int numberOfAIs = 60; // ������ AI ������Ʈ�� ����

    private BoxCollider rangeCollider; // ���� ������Ʈ�� BoxCollider

    // ���������� ȣ��Ǵ� �ʱ�ȭ �޼���
    public override void OnStartServer()
    {
        // ������ ���۵� �� AI�� ����
        SpawnAI();
    }

    // ���������� ȣ��Ǵ� �޼���
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

    // �������� AI�� �����ϴ� �޼���
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

                // `LastAIMovement` ��ũ��Ʈ�� ���Ե� AI ������Ʈ�� ���� �ʱ�ȭ
                LastAIMovement aiScript = aiObject.GetComponent<LastAIMovement>();
                if (aiScript != null)
                {
                    // AI ��ũ��Ʈ�� �ʿ��� ��� �߰����� �ʱ�ȭ �ڵ� �ۼ�
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

    // ������ ���� ������ ������ ��ġ�� �����ϴ� �޼���
    private Vector3 GeneratePosition()
    {
        if (rangeCollider == null || rangeObject == null)
        {
            Debug.LogError("rangeCollider or rangeObject is not assigned.");
            return Vector3.zero; // �߸��� ��ġ ��ȯ
        }

        Vector3 originPosition = rangeObject.transform.position; // ������ �߾� ��ġ
        float range_X = rangeCollider.bounds.size.x; // ������ X�� ũ��
        float range_Z = rangeCollider.bounds.size.z; // ������ Z�� ũ��

        // X��� Z�࿡�� ������ ����
        float randomX = Random.Range(-range_X / 2, range_X / 2);
        float randomZ = Random.Range(-range_Z / 2, range_Z / 2);

        return originPosition + new Vector3(randomX, 0f, randomZ); // Y���� 0���� �����Ͽ� 2D ��鿡���� �̵�
    }
}