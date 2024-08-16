using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mirror;
using System;

public interface INetworkRPC
{
    public void ClientMethod();
    public void CMDMethod();
    public void RPCMethod();
    public void ActionMethod();
}