using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class Energy : MonoBehaviour
{
    private Vector3 MoveTowards;
    private Vector3 StartLoc;
    public Room Room;
    private int Number;
    
    // Use this for initialization
    void Start()
    {
        string name = transform.name;
        string numberString = name.Substring(name.Length - 1);
        Number = int.Parse(numberString);

        StartLoc = transform.position;
        MoveTowards = new Vector3(transform.position.x, transform.position.y+2, transform.position.z);
    }

    // Update is called once per frame
    void Update()
    {
        if ((Room.Energy / Number) > 0)
            transform.position = Vector3.MoveTowards(transform.position, StartLoc, 0.2f);
        else
            transform.position = Vector3.MoveTowards(transform.position, MoveTowards, 0.2f);
    }
    
}
