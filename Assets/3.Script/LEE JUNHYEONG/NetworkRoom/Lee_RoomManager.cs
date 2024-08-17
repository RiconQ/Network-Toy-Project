using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;
using Unity.VisualScripting;
using UnityEngine.SceneManagement;

public class Lee_RoomManager : NetworkRoomManager
{
    /*
     * ȣ��Ʈ �ý��� Ŭ����
     */

    
    // ���� ���ῡ �ʿ��� ų ī�����Դϴ�.
    public int currentKillCount = 0;

    public override void OnServerChangeScene(string newSceneName)
    {
        base.OnServerChangeScene(newSceneName);

        // ���� �÷��� ���� ���ٸ� 0����
        if (newSceneName.Equals(this.GameplayScene))
        {
            currentKillCount = 0;
            StartCoroutine(CreateFlag());
        }
    }

    private IEnumerator CreateFlag()
    {
        while (true)
        {
            // ���޴������� ����ϴ� �� �̸��� �̷����� ����ϴ� �� �̸��� �޶� enum ������ �����Ͽ����ϴ�

            if (SceneManager.GetActiveScene().buildIndex.Equals((int)SceneName.LEVEL))
                break;

            yield return null;
        }

        Vector3 flagManagerPos = Vector3.zero;

        var flagManager = Instantiate((GameObject)Resources.Load("LEE JUNHYEONG/Prefabs/FlagManager"));
        NetworkServer.Spawn(flagManager);
    }
}
