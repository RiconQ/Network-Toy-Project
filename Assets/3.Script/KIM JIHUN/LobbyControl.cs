using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using UnityEngine.SceneManagement;

public class LobbyControl : MonoBehaviour
{
    [Header("UI Canvas")]
    [SerializeField] private GameObject _loginCanvas;
    [SerializeField] private GameObject _lobbyCanvas;

    [Header("My Info")]
    [SerializeField] private TMP_Text _myIP;
    [SerializeField] private TMP_Text _userName;

    [Header("User Info")]
    [SerializeField] private TMP_InputField _ipInput;
    [SerializeField] private TMP_InputField _portInput;

    [Header("Button")]
    [SerializeField] private Button _hostButton;
    [SerializeField] private Button _joinButton;
    [SerializeField] private Button _toMainMenu;

    private void Start()
    {
        _hostButton.onClick.AddListener(HostGame);
        _joinButton.onClick.AddListener(JoinGame);
        _toMainMenu.onClick.AddListener(ToMainMenu);

        //내 아이피 표시
        //_myIP.text = $"My IP : {.Instance.Network.GetLocalIPAddress()}";

        //User Name 표시
        _userName.text = $"[{Managers.Instance.Database.UserInfo.User_Name}]";
    }

    private void HostGame()
    {
        var roomManager = MirrorNetworkRoomManager.singleton;

        // 서버 열고 호스트로써 방을 생성한다.
        roomManager.StartHost();
    }

    private void JoinGame()
    {

    }

    private void ToMainMenu()
    {        
        _loginCanvas.SetActive(true);
        _lobbyCanvas.SetActive(false);
    }
}
