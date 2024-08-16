using LitJson;
using Mirror;
using MySql.Data.MySqlClient;
using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using Unity.VisualScripting;
using UnityEngine;
using Amazon;
using Amazon.EC2;
using Amazon.EC2.Model;
using Amazon.Runtime;
using System.Threading.Tasks;

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
        IP = "3.37.56.75";
        Port = "3306";
        TableName = "users";
        HostID = "remotehost";
        PassWord = "3537";
    }
}

public class AwsEC2Manager
{
    private string awsAccessKeyId = "AKIAQKPIMCMCNKQMC7E7";
    private string awsSecretAccessKey = "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";
    private string awsRegion = "ap-northeast-2"; // 한국 리전 (서울)
    private string awsEC2InstanceId = "i-01f27b701c7fc3729";
    public string Ec2PublicIp { get; private set; }
    public Action OnPublicIPRetrieved { get; set; }

    public IEnumerator GetEC2InstancePublicIP()
    {
        var credentials = new BasicAWSCredentials(awsAccessKeyId, awsSecretAccessKey);
        var ec2Client = new AmazonEC2Client(credentials, RegionEndpoint.GetBySystemName(awsRegion));

        var request = new DescribeInstancesRequest
        {
            InstanceIds = new List<string> { awsEC2InstanceId }
        };

        var responseTask = ec2Client.DescribeInstancesAsync(request);

        yield return new WaitUntil(() => responseTask.IsCompleted);

        if (responseTask.Exception == null)
        {
            foreach (var reservation in responseTask.Result.Reservations)
            {
                foreach (var instance in reservation.Instances)
                {
                    Ec2PublicIp = instance.PublicIpAddress;
                    Debug.Log("Instance Public IP: " + Ec2PublicIp);
                }
            }

            OnPublicIPRetrieved?.Invoke();
        }
        else
        {
            Debug.LogError("Error: " + responseTask.Exception.Message);
        }
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
    private AwsEC2Manager awsEC2Manager; // EC2 관리 클래스 

    public void Init()
    {
        awsEC2Manager = new AwsEC2Manager();
        awsEC2Manager.OnPublicIPRetrieved = InitDataBase; // IP가 설정된 후 DB 초기화

        StartCoroutine(awsEC2Manager.GetEC2InstancePublicIP());
    }

    private void InitDataBase()
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
            Debug.Log("DB Open Connection Complete");
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
        JsonData jsonDatabaseSessionData = JsonMapper.ToObject(JsonString);

        // IP를 AWS EC2에서 가져온 IP로 설정
        if (!string.IsNullOrEmpty(awsEC2Manager.Ec2PublicIp))
        {
            jsonDatabaseSessionData["IP"] = awsEC2Manager.Ec2PublicIp;
        }
        else
        {
            Debug.LogError("EC2 Public IP is not set.");
            return string.Empty;
        }

        jsonDatabaseSessionData["HostID"] = "remotehost";
        jsonDatabaseSessionData["PassWord"] = "3537";

        string serverDatabeseSesstionDataToString =
            $"Server={jsonDatabaseSessionData["IP"]};" +
            $"Port={jsonDatabaseSessionData["Port"]};" +
            $"Database={jsonDatabaseSessionData["TableName"]};" +
            $"Uid={jsonDatabaseSessionData["HostID"]};" +
            $"Pwd={jsonDatabaseSessionData["PassWord"]};" +
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
