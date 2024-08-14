using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerCreate : MonoBehaviour
{
    [SerializeField] private GameObject playerPrefab;
    // ������ AI ������Ʈ�� ������
    [SerializeField] private GameObject rangeObject;
    // ���� ������ �����ϴ� ������Ʈ

    private BoxCollider rangeCollider;

    private void Awake()
    {
        rangeCollider = rangeObject.GetComponent<BoxCollider>();
        // rangeObject���� BoxCollider ������Ʈ�� �����´�.
    }

    private void Start()
    {
        playerPrefab.SetActive(false);
        Vector3 spawnPosition = generationPosition();
        GameObject playObject = Instantiate(playerPrefab, spawnPosition, Random.rotation);
        // ������ AI ������Ʈ�� AI ��ũ��Ʈ�� �߰��ϰų� ������ �� �ֽ��ϴ�.
        playObject.SetActive(true);
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
