using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;
using Unity.VisualScripting;
using UnityEngine.SceneManagement;

public class Lee_RoomManager : NetworkRoomManager
{
    /*
     * 호스트 시스템 클래스
     */

    
    // 게임 종료에 필요한 킬 카운터입니다.
    public int currentKillCount = 0;

    public override void OnServerChangeScene(string newSceneName)
    {
        base.OnServerChangeScene(newSceneName);

        // 게임 플레이 씬과 같다면 0으로
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
            // 씬메니저에서 사용하는 씬 이름과 미러에서 사용하는 씬 이름이 달라 enum 값으로 구분하였습니다

            if (SceneManager.GetActiveScene().buildIndex.Equals((int)SceneName.LEVEL))
                break;

            yield return null;
        }

        Vector3 flagManagerPos = Vector3.zero;

        var flagManager = Instantiate((GameObject)Resources.Load("LEE JUNHYEONG/Prefabs/FlagManager"));
        NetworkServer.Spawn(flagManager);
    }
}
