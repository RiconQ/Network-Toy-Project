using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;

public class MainMenuController : MonoBehaviour
{
    [Header("Button")]
    [SerializeField] private Button _loginBTN;
    [SerializeField] private Button _startGameBTN;
    [SerializeField] private Button _quitGameBTN;

    [Header("Popup Login")]
    [SerializeField] private GameObject _popupLogin;

    [Header("Log")]
    [SerializeField] private GameObject _logOBJ;
    private void Start()
    {
        _loginBTN.onClick.AddListener(PopupLogin);
        _startGameBTN.onClick.AddListener(GameStart);
        _quitGameBTN.onClick.AddListener(GameQuit);
    }

    /// <summary>
    /// Show Popup_Login
    /// </summary>
    private void PopupLogin()
    {
        _popupLogin.transform.parent.gameObject.SetActive(true);
        _popupLogin.transform.parent.GetComponent<LoginController>().Open();

        _popupLogin.transform.DOScale(new Vector3(0.8f, 0.8f, 1), 0.5f);
    }

    /// <summary>
    /// Load Scene To Lobby When User Info is Not Null
    /// If User Info is Null -> Show Error Log 
    /// </summary>
    private void GameStart()
    {
        ShowLog();
    }


    private void GameQuit()
    {
        Application.Quit();
    }

    /// <summary>
    /// 로그인이 되어있지 않을때, 로그 출력
    /// </summary>
    private void ShowLog()
    {
        if (_logOBJ.activeSelf) return;
        StartCoroutine(ShowLog_co());
    }

    private IEnumerator ShowLog_co()
    {
        _logOBJ.SetActive(true);
        yield return new WaitForSeconds(3);
        _logOBJ.SetActive(false);
    }
}
