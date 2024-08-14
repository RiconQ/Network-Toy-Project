using LitJson;
using Mirror;
using MySql.Data.MySqlClient;
using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using Unity.VisualScripting;
using UnityEngine;

public class UserInfo
{
    public string User_Email { get; private set; }
    public string User_Name { get; private set; }
    public string User_Password { get; private set; }
    public string User_PhoneNumber { get; private set; }

    public UserInfo(string userEmail, string userName, string userPassword)
    {
        User_Email = userEmail;
        User_Name = userName;
        User_Password = userPassword;        
    }
}


/// <summary>
/// Database 접속에 필요한 세션 정보
/// </summary>
public class DatabaseSessionData
{
    public string IP { get; private set; }
    public string Port { get; private set; }
    public string TableName { get; private set; }
    public string HostID { get; private set; }
    public string PassWord { get; private set; }

    public DatabaseSessionData()
    {
        IP = "127.0.0.1";
        Port = "3306";
        TableName = "users";
        HostID = "root";
        PassWord = "0000";
    }
}

public class DatabaseManager : MonoBehaviour, IInitializable
{
    public MySqlConnection DatabaseConnection { get; private set; }
    public MySqlDataReader DatabaseReader { get; private set; }
    public UserInfo UserInfo { get { return _userInfo; } set { _userInfo = value; } }

    private UserInfo _userInfo;


    private readonly string _databasePath = Application.dataPath + "/Database";
    private readonly string _filePath = "/config.json";

    private DatabaseSessionData _databaseSession;    

    public void Init()
    {
        string serverDatabaseSessionDataInfo = SetServerDatabaseSessionData();
        try
        {
            if (serverDatabaseSessionDataInfo == string.Empty)
            {
                Debug.Log("ServerDatabaseSessionDataInfo is null");
                return;
            }

            DatabaseConnection = new MySqlConnection(serverDatabaseSessionDataInfo);
            DatabaseConnection.Open();
            Debug.Log("DB Open Connection Compelete");
        }
        catch (Exception e)
        {
            Debug.LogException(e);
        }
    }

    public bool CreateUser(string userEmail, string userName, string userPassword, out string exceptionMessage)
    {
        try
        {
            exceptionMessage = string.Empty;

            if (!IsConnectionOpen())
                return false;

            string sqlCreateUserCommand = @"
            INSERT INTO user_info (User_Email, User_Name, User_Password)
            VALUES (@userEmail, @userName, @userPassword)";

            using (MySqlCommand mySqlCreateUserCommand = new MySqlCommand(sqlCreateUserCommand, DatabaseConnection))
            {
                mySqlCreateUserCommand.Parameters.AddWithValue("@userEmail", userEmail);
                mySqlCreateUserCommand.Parameters.AddWithValue("@userName", userName);
                mySqlCreateUserCommand.Parameters.AddWithValue("@userPassword", userPassword);                

                mySqlCreateUserCommand.ExecuteNonQuery();
            }
            
            return true;
        }
        catch (Exception e)
        {
            exceptionMessage = e.Message;
            Debug.Log(e.Message);
            return false;
        }
    }

    public bool LoginUser(string userEmail, string userPassword, out string exceptionMessage)
    {
        try
        {
            exceptionMessage = string.Empty;

            if (!IsConnectionOpen())
                return false;

            string sqlLoginUserCommand = @"
            SELECT User_Email, User_Name, User_Password FROM user_info
            WHERE User_Email = @userEmail AND User_Password = @userPassword";

            using (MySqlCommand mySqlLoginUserCommand = new MySqlCommand(sqlLoginUserCommand, DatabaseConnection))
            {
                mySqlLoginUserCommand.Parameters.AddWithValue("@userEmail", userEmail);
                mySqlLoginUserCommand.Parameters.AddWithValue("@userPassword", userPassword);

                using (MySqlDataReader reader = mySqlLoginUserCommand.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            string email = reader.IsDBNull(0) ? string.Empty : reader.GetString(0);
                            string name = reader.IsDBNull(1) ? string.Empty : reader.GetString(1);
                            string password = reader.IsDBNull(2) ? string.Empty : reader.GetString(2);

                            if (!string.IsNullOrEmpty(name))
                            {
                                _userInfo = new UserInfo(userEmail: email, userName: name, userPassword: password);
                                return true;
                            }
                        }
                    }
                }
            }
            return false;
        }
        catch (Exception e)
        {
            exceptionMessage = e.Message;
            Debug.LogError(e.Message);
            return false;
        }
    }

    public void LoadUserData()
    {
        
    }

    public void SaveUserData()
    {

    }

    private string SetServerDatabaseSessionData()
    {
        string dataBaseSessionDataPath = _databasePath + _filePath;

        // dataBaseSessionDataPath 경로에 파일이 존재하지 않는 경우, 경로 폴더 및 Database Session 정보를 생성한다.
        if (!File.Exists(_databasePath))
        {
            Directory.CreateDirectory(_databasePath);

            if (!File.Exists(dataBaseSessionDataPath))
            {
                File.WriteAllText(dataBaseSessionDataPath, CreateJsonDatabaseSessionData());
                Debug.Log($"Create: {dataBaseSessionDataPath}");
            }
        }

        string JsonString = File.ReadAllText(dataBaseSessionDataPath);
        /*
         [{"IP" : "127.0.0.1",
         "Port" : "3306",
         "TableName" : "users",
         "HostID" : "root",
         "PassWord" : "0321}]
        */
        JsonData jsonDatabaseSesstionData = JsonMapper.ToObject(JsonString);
        string serverDatabeseSesstionDataToString =
            $"Server={jsonDatabaseSesstionData["IP"]};" +
            $"Port={jsonDatabaseSesstionData["Port"]};" +
            $"Database={jsonDatabaseSesstionData["TableName"]};" +
            $"Uid={jsonDatabaseSesstionData["HostID"]};" +
            $"Pwd={jsonDatabaseSesstionData["PassWord"]};" +
            "CharSet=utf8;";

        return serverDatabeseSesstionDataToString;
    }

    private string CreateJsonDatabaseSessionData()
    {
        DatabaseSessionData jsonDatabaseSessionData = new DatabaseSessionData();
        JsonData jsonData = JsonMapper.ToJson(jsonDatabaseSessionData);

        return jsonData.ToString();
    }

    private bool IsConnectionOpen()
    {
        if (DatabaseConnection.State != System.Data.ConnectionState.Open)
        {
            DatabaseConnection.Open();

            if (DatabaseConnection.State != System.Data.ConnectionState.Open)
                return false;
        }

        return true;
    }
}
