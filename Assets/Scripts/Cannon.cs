using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class Cannon : MonoBehaviour
{
    private Vector3 MoveTowards;
    private Vector3 StartLoc;
    public Room Room;
    
    // Use this for initialization
    void Start()
    {
        StartLoc = transform.position;
        MoveTowards = new Vector3(transform.position.x, transform.position.y+1, transform.position.z);
    }

    // Update is called once per frame
    void Update()
    {
        if (Room.WasAPushed)
            transform.position = Vector3.MoveTowards(transform.position, MoveTowards, 0.05f);
        else
            Vector3.MoveTowards(transform.position, StartLoc, 0.05f);
    }
    
}
