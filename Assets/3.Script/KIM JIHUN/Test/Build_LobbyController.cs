using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using UnityEngine.SceneManagement;
using Mirror;
using Unity.VisualScripting;

public class Build_LobbyController : MonoBehaviour
{
    #region Var
    [Header("UI Canvas")]
    [SerializeField] private GameObject _loginCanvas;
    [SerializeField] private GameObject _lobbyCanvas;

    [Header("My Info")]
    [SerializeField] private TMP_Text _myIP;
    [SerializeField] private TMP_Text _userName;
    [SerializeField] private TMP_Text _logTextbox;

    [Header("User Info")]
    [SerializeField] private TMP_InputField _ipInput;
    [SerializeField] private TMP_InputField _portInput;

    [Header("Button")]
    [SerializeField] private Button _hostButton;
    [SerializeField] private Button _joinButton;
    [SerializeField] private Button _toMainMenu;
    #endregion

    private void Start()
    {
        _hostButton.onClick.AddListener(HostGame);
        _joinButton.onClick.AddListener(JoinGame);
        _toMainMenu.onClick.AddListener(ToMainMenu);

        //�� ������ ǥ��
        _myIP.text = $"My IP : {Managers.Instance.Game.GetLocalIPAddress()}";

        //User Name ǥ��
        _userName.text = $"[{Managers.Instance.Database.UserInfo.User_Name}]";
    }

    private void HostGame()
    {
        var roomManager = Build_RoomManager.singleton;
        // �� ����
        //

        // ���� ���� ȣ��Ʈ�ν� ���� �����Ѵ�.
        roomManager.StartHost();
    }

    private void JoinGame()
    {
        var roomManager = Build_RoomManager.singleton;

        // Ŭ���̾�Ʈ�� ������ ������ IP�� ��Ʈ ��ȣ ����
        if (_ipInput.text == string.Empty)
        {
            // ��Ʈ ��ȣ�� �ùٸ��� �ʴٸ� �޽����� ����.
            _logTextbox.text = "Invalid IP number.";
            return;
        }
        else
        {
            roomManager.networkAddress = _ipInput.text;
        }

        if (ushort.TryParse(_portInput.text, out ushort port))
        {
            roomManager.GetOrAddComponent<TelepathyTransport>().port = port;
        }
        else
        {
            // ��Ʈ ��ȣ�� �ùٸ��� �ʴٸ� �޽����� ����.
            _logTextbox.text = "Invalid port number.";
            return;
        }

        // Ŭ���̾�Ʈ�� ���� �õ�
        roomManager.StartClient();
    }

    private void ToMainMenu()
    {
        _loginCanvas.SetActive(true);
        _lobbyCanvas.SetActive(false);
    }
}

