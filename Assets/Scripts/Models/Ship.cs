using System;
using System.Collections.Generic;
using UnityEngine;

public class Ship
{
    public Room UpperRed;
    public Room LowerRed;
    public Room UpperWhite;
    public Room LowerWhite;
    public Room UpperBlue;
    public Room LowerBlue;

    public void DoRedDamage(int amount) { }
    public void DoWhiteDamage(int amount) { }
    public void DoBlueDamage(int amount) { }

    public Ship()
    {
        InstantiateVectors();
        SetRoomConnections();

        var upperRedCannon = GameObject.Find("UpperRedCannon").GetComponent<Cannon>();
        upperRedCannon.Room = UpperRed;
        var LowerRedCannon = GameObject.Find("LowerRedCannon").GetComponent<Cannon>();
        LowerRedCannon.Room = LowerRed;
        var UpperWhiteCannon = GameObject.Find("UpperWhiteCannon").GetComponent<Cannon>();
        UpperWhiteCannon.Room = UpperWhite;
        var LowerWhiteCannon = GameObject.Find("LowerWhiteCannon").GetComponent<Cannon>();
        LowerWhiteCannon.Room = LowerWhite;
        var UpperBlueCannon = GameObject.Find("UpperBlueCannon").GetComponent<Cannon>();
        UpperBlueCannon.Room = UpperBlue;
        var LowerBlueCannon = GameObject.Find("LowerBlueCannon").GetComponent<Cannon>();
        LowerBlueCannon.Room = LowerBlue;

        GameObject.Find("RedShield1").GetComponent<Shield>().Room = UpperRed;
        GameObject.Find("RedShield2").GetComponent<Shield>().Room = UpperRed;
        
        GameObject.Find("WhiteShield1").GetComponent<Shield>().Room = UpperWhite;
        GameObject.Find("WhiteShield2").GetComponent<Shield>().Room = UpperWhite;
        GameObject.Find("WhiteShield3").GetComponent<Shield>().Room = UpperWhite;

        GameObject.Find("BlueShield1").GetComponent<Shield>().Room = UpperBlue;
        GameObject.Find("BlueShield2").GetComponent<Shield>().Room = UpperBlue;


        GameObject.Find("RedEnergy1").GetComponent<Energy>().Room = LowerRed;
        GameObject.Find("RedEnergy2").GetComponent<Energy>().Room = LowerRed;
        GameObject.Find("RedEnergy3").GetComponent<Energy>().Room = LowerRed;

        GameObject.Find("WhiteEnergy1").GetComponent<Energy>().Room = LowerWhite;
        GameObject.Find("WhiteEnergy2").GetComponent<Energy>().Room = LowerWhite;
        GameObject.Find("WhiteEnergy3").GetComponent<Energy>().Room = LowerWhite;
        GameObject.Find("WhiteEnergy4").GetComponent<Energy>().Room = LowerWhite;
        GameObject.Find("WhiteEnergy5").GetComponent<Energy>().Room = LowerWhite;

        GameObject.Find("BlueEnergy1").GetComponent<Energy>().Room = LowerBlue;
        GameObject.Find("BlueEnergy2").GetComponent<Energy>().Room = LowerBlue;
        GameObject.Find("BlueEnergy3").GetComponent<Energy>().Room = LowerBlue;
    }

    private void InstantiateVectors()
    {
        UpperRed = new HeavySideCannonRoom(new Vector3(-3.32f, 2.71f, 0));
        UpperBlue = new HeavySideCannonRoom(new Vector3(3.34f, 2.47f, 0));
        UpperWhite = new HeavyMainCannonRoom(new Vector3(0.16f, 3.61f, 0));
        LowerRed = new LightCannonRoom(new Vector3(-3.48f, -1.89f, 0));
        LowerBlue = new LightCannonRoom(new Vector3(3.65f, -1.77f, 0));
        LowerWhite = new PulseCannonRoom(new Vector3(0.09f, -0.54f, 0));
    }

    private void SetRoomConnections()
    {
        UpperRed.RightRoom = UpperWhite;
        UpperRed.DownRoom = LowerRed;

        LowerRed.UpRoom = UpperRed;
        LowerRed.RightRoom = LowerWhite;

        UpperBlue.LeftRoom = UpperWhite;
        UpperBlue.DownRoom = LowerBlue;

        LowerBlue.LeftRoom = LowerWhite;
        LowerBlue.UpRoom = UpperBlue;

        UpperWhite.LeftRoom = UpperRed;
        UpperWhite.RightRoom = UpperBlue;
        UpperWhite.DownRoom = LowerWhite;

        LowerWhite.LeftRoom = LowerRed;
        LowerWhite.RightRoom = LowerBlue;
        LowerWhite.UpRoom = UpperWhite;
    }
}