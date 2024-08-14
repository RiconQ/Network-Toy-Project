using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;

public class MainMenuController : MonoBehaviour
{
    [Header("UI Canvas")]
    [SerializeField] private GameObject _loginCanvas;
    [SerializeField] private GameObject _lobbyCanvas;

    [Header("Button")]
    [SerializeField] private Button _loginBTN;      
    [SerializeField] private Button _quitGameBTN;
    [SerializeField] private Button _startGameBTN;    

    [Header("Popup Login")]
    [SerializeField] private GameObject _popupLogin;

    [Header("Log")]
    [SerializeField] private GameObject _logOBJ;
    private void Start()
    {
        _loginBTN.onClick.AddListener(PopupLogin);        
        _quitGameBTN.onClick.AddListener(GameQuit);
        _startGameBTN.onClick.AddListener(GameStart);

        // UI 초기화
        _loginCanvas.SetActive(true);
        _lobbyCanvas.SetActive(false);

        //로그인 정보가 있다면 LoginBTN 비활성화
        //_loginBTN.gameObject.SetActive(false);
    }

    public void Clear()
    {
        // UI 초기화
        _loginCanvas.SetActive(true);
        _lobbyCanvas.SetActive(false);
    }

    /// <summary>
    /// Show Popup_Login
    /// </summary>
    private void PopupLogin()
    {
        _popupLogin.transform.parent.gameObject.SetActive(true);
        _popupLogin.transform.parent.GetComponent<LoginController>().Open();

        _popupLogin.transform.localScale = Vector3.zero;               
        _popupLogin.transform.DOScale(new Vector3(0.8f, 0.8f, 1), 0.5f);
    }

    private void GameStart()
    {
        _lobbyCanvas.SetActive(true);
        _loginCanvas.SetActive(false);        
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
