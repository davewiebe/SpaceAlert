using System;
using UnityEngine;

public class Room
{
    public bool WasAPushed;
    public Vector3 Vector;

    public int Energy { get; set; }
    public int MaxEnergy { get; set; }

    public int CannonDistance { get; set; }
    public int CannonDamage { get; set; }

    public Room LeftRoom;
    public Room RightRoom;
    public Room UpRoom;
    public Room DownRoom;

    public Room(Vector3 vector)
    {
        Energy = 2;
        Vector = vector;
        WasAPushed = false;
        MaxEnergy = 3;

    }

    public Room GetLeftRoom()
    {
        if (LeftRoom != null)
            return LeftRoom;
        return this;
    }
    public Room GetRightRoom()
    {
        if (RightRoom != null)
            return RightRoom;
        return this;
    }
    public Room GetDeckChangeRoom()
    {
        if (UpRoom != null)
            return UpRoom;
        return DownRoom;
    }

    public virtual void PushA()
    {
    }
    public virtual void PushB()
    {    
        var pullAmount = MaxEnergy - Energy;
        var actualPull = DownRoom.TryPullEnergy(pullAmount);
        Energy += pullAmount;
    }
    internal int TryPullEnergy(int pullAmount)
    {
        var pull = Math.Min(pullAmount, Energy);
        Energy -= pull;
        return pull;
    }
}

public class LightCannonRoom : Room
{
    public LightCannonRoom(Vector3 vector) : base(vector)
    {
        CannonDistance = 3;
        CannonDamage = 2;
        MaxEnergy = 3;
    }

    public override void PushA()
    {
        WasAPushed = true;
    }

    public override void PushB()
    {
        int pullAmount = MaxEnergy - Energy;
        int actualPull = 0;

        Room pullFromRoom = LeftRoom;
        if (pullFromRoom == null)
            pullFromRoom = RightRoom;

        actualPull = LeftRoom.TryPullEnergy(pullAmount);
        Energy += actualPull;
    }
}
public class HeavySideCannonRoom : Room
{

    public HeavySideCannonRoom(Vector3 vector) : base(vector)
    {
        Energy = 1;
        CannonDistance = 3;
        CannonDamage = 4;
        MaxEnergy = 2;
    }

    public override void PushA()
    {
        if (DownRoom.Energy > 0)
        {
            DownRoom.Energy -= 1;
            WasAPushed = true;
        }
    }

}
public class HeavyMainCannonRoom : HeavySideCannonRoom
{

    public HeavyMainCannonRoom(Vector3 vector) : base(vector)
    {
        Energy = 1;
        MaxEnergy = 3;
        CannonDamage = 5;
    }
}
public class PulseCannonRoom : Room
{
    public int EnergyRefills { get; set; }

    public PulseCannonRoom(Vector3 vector) : base(vector)
    {
        Energy = 3;
        MaxEnergy = 5;
        CannonDamage = 1;
        CannonDistance = 2;
        EnergyRefills = 3;
    }
    public override void PushA()
    {
        if (Energy > 0)
        {
            Energy -= 1;
            WasAPushed = true;
        }
    }
    public override void PushB()
    {
        if (EnergyRefills >0)
        {
            Energy = MaxEnergy;
            EnergyRefills -= 1;
        }
    }
}