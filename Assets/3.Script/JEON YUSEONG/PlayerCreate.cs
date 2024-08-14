using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerCreate : MonoBehaviour
{
    [SerializeField] private GameObject playerPrefab;
    // 생성할 AI 오브젝트의 프리팹
    [SerializeField] private GameObject rangeObject;
    // 맵의 범위를 정의하는 오브젝트

    private BoxCollider rangeCollider;

    private void Awake()
    {
        rangeCollider = rangeObject.GetComponent<BoxCollider>();
        // rangeObject에서 BoxCollider 컴포넌트를 가져온다.
    }

    private void Start()
    {
        playerPrefab.SetActive(false);
        Vector3 spawnPosition = generationPosition();
        GameObject playObject = Instantiate(playerPrefab, spawnPosition, Random.rotation);
        // 생성된 AI 오브젝트에 AI 스크립트를 추가하거나 설정할 수 있습니다.
        playObject.SetActive(true);
    }

    private Vector3 generationPosition()
    {
        Vector3 originPosition = rangeObject.transform.position;
        // 오브젝트의 중앙 위치를 가져옴
        float range_X = rangeCollider.bounds.size.x;
        // BoxCollider의 X축 크기를 가져옴
        float range_Z = rangeCollider.bounds.size.z;
        // BoxCollider의 Z축 크기를 가져옴
        float randomX = Random.Range(-range_X / 2, range_X / 2);
        // X축 범위에서 랜덤값 추출
        float randomZ = Random.Range(-range_Z / 2, range_Z / 2);
        // Z축 범위에서 랜덤값 추출
        Vector3 randomPosition = new Vector3(randomX, 0f, randomZ);
        // X와 Z의 값 중 랜덤하게 선택된 위치 벡터 생성
        Vector3 respawnPosition = originPosition + randomPosition;
        // originPosition에서 랜덤 위치를 더해 최종 위치 결정
        return respawnPosition;
        // 최종 위치 반환
    }
}
