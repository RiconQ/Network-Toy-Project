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

        //�� ������ ǥ��
        //_myIP.text = $"My IP : {.Instance.Network.GetLocalIPAddress()}";

        //User Name ǥ��
        _userName.text = $"[{Managers.Instance.Database.UserInfo.User_Name}]";
    }

    private void HostGame()
    {
        var roomManager = MirrorNetworkRoomManager.singleton;

        // ���� ���� ȣ��Ʈ�ν� ���� �����Ѵ�.
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
