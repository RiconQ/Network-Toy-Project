using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AICreate : MonoBehaviour
{
    [SerializeField] private GameObject aiPrefab;
    // ������ AI ������Ʈ�� ������
    [SerializeField] private GameObject rangeObject;
    // ���� ������ �����ϴ� ������Ʈ
    [SerializeField] private int numberOfAIs = 1;
    // ������ AI ������Ʈ�� ����

    private BoxCollider rangeCollider;

    private void Awake()
    {
        rangeCollider = rangeObject.GetComponent<BoxCollider>();
        // rangeObject���� BoxCollider ������Ʈ�� �����´�.
    }

    private void Start()
    {
        aiPrefab.SetActive(false);
        // ������ ������ŭ AI ������Ʈ�� �����մϴ�.
        for (int i = 0; i < numberOfAIs; i++)
        {
            // �� AI ������Ʈ�� ���� ��ġ�� ȸ������ �����մϴ�.
            Vector3 spawnPosition = generationPosition();
            GameObject aiObject = Instantiate(aiPrefab, spawnPosition, Random.rotation);
            // ������ AI ������Ʈ�� AI ��ũ��Ʈ�� �߰��ϰų� ������ �� �ֽ��ϴ�.
            aiObject.SetActive(true);
            AI aiScript = aiObject.GetComponent<AI>();
            if (aiScript != null)
            {
                aiScript.Initialize(rangeCollider);
            }
        }
    }

    private Vector3 generationPosition()
    {
        Vector3 originPosition = rangeObject.transform.position;
        // ������Ʈ�� �߾� ��ġ�� ������
        float range_X = rangeCollider.bounds.size.x;
        // BoxCollider�� X�� ũ�⸦ ������
        float range_Z = rangeCollider.bounds.size.z;
        // BoxCollider�� Z�� ũ�⸦ ������
        float randomX = Random.Range(-range_X / 2, range_X / 2);
        // X�� �������� ������ ����
        float randomZ = Random.Range(-range_Z / 2, range_Z / 2);
        // Z�� �������� ������ ����
        Vector3 randomPosition = new Vector3(randomX, 0f, randomZ);
        // X�� Z�� �� �� �����ϰ� ���õ� ��ġ ���� ����
        Vector3 respawnPosition = originPosition + randomPosition;
        // originPosition���� ���� ��ġ�� ���� ���� ��ġ ����
        return respawnPosition;
        // ���� ��ġ ��ȯ
    }
}
