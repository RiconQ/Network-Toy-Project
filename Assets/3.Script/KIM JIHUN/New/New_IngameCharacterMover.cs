using Mirror;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum EPlayerType
{
    Alive,
    Ghost
}

public class New_IngameCharacterMover : New_CharacterMover
{
    [SyncVar]
    public EPlayerType playerType;

    [ClientRpc]
    public void RpcTeleport(Vector3 position)
    {
        transform.position = position;
    }

    public override void Start()
    {
        base.Start();

        if (isOwned)
        {
            //юс╫ц
            isMoveable = true;
        }

        New_GameSystem.instance.AddPlayer(this);
    }

}
