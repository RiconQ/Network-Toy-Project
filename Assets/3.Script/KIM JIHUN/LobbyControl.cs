using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using UnityEngine.SceneManagement;

public class LobbyControl : MonoBehaviour
{
    [Header("IP")]
    [SerializeField] private TMP_Text _myIP;
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
        //_myIP.text = $"My IP : {�� ������}";
    }

    private void HostGame()
    {

    }

    private void JoinGame()
    {

    }

    private void ToMainMenu()
    {
        //SceneManager.LoadScene()
    }
}
