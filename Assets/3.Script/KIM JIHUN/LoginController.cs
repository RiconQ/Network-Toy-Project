using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.UI;
using DG.Tweening;
using Unity.VisualScripting;

public class LoginController : MonoBehaviour
{
    [Header("Common")]
    [SerializeField] private TMP_Text _title;
    [SerializeField] private Image _iconIMG;
    [SerializeField] private Sprite[] _icons; 

    [Header("Login Text")]
    [SerializeField] private TMP_InputField _loginEmail;
    [SerializeField] private TMP_InputField _loginPassword;
    [SerializeField] private TMP_Text _logText;

    [Header("Button")]
    [SerializeField] private Button _closeBTN;
    [SerializeField] private Button _loginBTN;
    [SerializeField] private Button _registerBTN;
    [SerializeField] private Button _startGameBTN;

    [Header("Register Text")]
    [SerializeField] private TMP_InputField _registerEmail;
    [SerializeField] private TMP_InputField _registerUserName;
    [SerializeField] private TMP_InputField _registerPassword;

    [Header("Obj")]
    [SerializeField] private GameObject _loginContainer;
    [SerializeField] private GameObject _registerContainer;
    [SerializeField] private GameObject _popupObj;

    [Header("ObjBtn")]
    [SerializeField] private GameObject _loginBtnObj;    
    [SerializeField] private GameObject _startGameBtnObj;

    private bool _isRegister = false;

    /// <summary>
    /// When Click Login Button In MainMenu
    /// </summary>
    public void Open()
    {
        _isRegister = false;
        _loginBTN.onClick.AddListener(Login);
        _registerBTN.onClick.AddListener(Register);
        _closeBTN.onClick.AddListener(Close);

        _title.text = "로그인";
        _iconIMG.sprite = _icons[0];
        _registerContainer.SetActive(false);
        _loginContainer.SetActive(true);
    }

    /// <summary>
    /// When Click Close Button In Popup
    /// </summary>
    private void Close()
    {
        _isRegister = false;
        _loginEmail.text = string.Empty;
        _loginPassword.text = string.Empty;

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
        //회원가입 창이라면 Login창으로 전환
        if (_isRegister)
        {
            _registerContainer.SetActive(false);
            _loginContainer.SetActive(true);            

            _title.text = "로그인";
            _iconIMG.sprite = _icons[0];

            _isRegister = false;
        }
        //로그인 창이라면 로그인 로직, 로그인 성공시 로그인 창 비활성화 후 메인메뉴 로그인 버튼 비활성화
        else
        {
            //로그인 로직                        
            string exceptionMessage;
            bool isLoginSucess = Managers.Instance.Database.LoginUser(_loginEmail.text, _loginPassword.text, out exceptionMessage);
            //로그인 성공시 로그인 창 비활성화 후 메인메뉴 로그인 버튼 비활성화
            
            // 로그인 성공
            if (isLoginSucess)
            {
                Close();
                _loginBtnObj.SetActive(false);
                _startGameBtnObj.SetActive(true);
                PrintLog(exceptionMessage);
            }            
            else
            {
                //로그인 실패 Log 출력
                _logText.text = "로그인 실패";
            }           
        }
    }

    /// <summary>
    /// When Click Register Button In Popup
    /// </summary>
    private void Register()
    {
        // 회원가입 창이라면 회원가입 로직, 이후 로그인 창으로
        if (_isRegister)
        {
            //회원가입 로직
            string exceptionMessage;            
            bool isCreateSucess = Managers.Instance.Database.CreateUser(_registerEmail.text, _registerUserName.text, _registerPassword.text, out exceptionMessage);

            if (isCreateSucess)
            {
                //회원가입 성공시 로그인 창으로 전환
                _registerContainer.SetActive(false);
                _loginContainer.SetActive(true);
                _title.text = "로그인";
                _iconIMG.sprite = _icons[0];
                _isRegister = false;
            }            
            else
            {
                PrintLog(exceptionMessage);
            }
        }
        // 로그인 창이라면 회원가입 모드로 전환
        else
        {
            _registerContainer.SetActive(true);
            _loginContainer.SetActive(false);

            _title.text = "회원가입";
            _iconIMG.sprite = _icons[1];

            _isRegister = true;
        }
    }

    /// <summary>
    /// Log Text 출력 메서드
    /// Parameter 미기입시 자동으로 Log Clear
    /// </summary>
    /// <param name="log"></param>
    private void PrintLog(string log = "")
    {
        _logText.text = log;
    }
}
