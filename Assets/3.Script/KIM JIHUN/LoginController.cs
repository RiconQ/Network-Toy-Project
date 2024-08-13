using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.UI;
using DG.Tweening;

public class LoginController : MonoBehaviour
{
    [Header("Text")]
    [SerializeField] private TMP_InputField _userName;
    [SerializeField] private TMP_InputField _password;
    [SerializeField] private TMP_Text _logText;

    [Header("Button")]
    [SerializeField] private Button _loginBTN;
    [SerializeField] private Button _registerBTN;
    [SerializeField] private Button _closeBTN;

    [Header("Obj")]
    [SerializeField] private GameObject _popupObj;
    [SerializeField] private GameObject _logigBtnObj;

    /// <summary>
    /// When Click Login Button In MainMenu
    /// </summary>
    public void Open()
    {
        _loginBTN.onClick.AddListener(Login);
        _registerBTN.onClick.AddListener(Register);
        _closeBTN.onClick.AddListener(Close);
        
    }

    /// <summary>
    /// When Click Close Button In Popup
    /// </summary>
    private void Close()
    {
        _userName.text = string.Empty;
        _password.text = string.Empty;

        _loginBTN.onClick.RemoveAllListeners();
        _registerBTN.onClick.RemoveAllListeners();
        _closeBTN.onClick.RemoveAllListeners();

        StartCoroutine(ScaleToZero_co());
    }

    private IEnumerator ScaleToZero_co()
    {
        _popupObj.transform.DOScale(Vector3.zero, 0.5f);
        yield return new WaitForSeconds(0.5f);
        gameObject.SetActive(false);
    }

    /// <summary>
    /// When Click Login Button In Popup
    /// </summary>
    private void Login()
    {

        // 로그인에 성공했다면 메인메뉴 로그인 버튼 비활성화
        /*
         * if(Login Success)
         * {
         *      _logigBtnObj.SetActive(false);
         * }
         */
    }

    /// <summary>
    /// When Click Register Button In Popup
    /// </summary>
    private void Register()
    {

    }

}
