using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class ABC : MonoBehaviour
{
    private Vector3 MoveTowards;
    public Room CurrentRoom { get; set; }
    public Actions Actions { get; set; }
    
    // Use this for initialization
    void Start()
    {
    }

    // Update is called once per frame
    void Update()
    {
        //transform.position = Vector3.MoveTowards(transform.position, MoveTowards, 0.05f);
        //gameObject.GetComponent<SpriteRenderer>().sprite = Resources.Load("b", typeof(Sprite)) as Sprite;

        gameObject.GetComponent<SpriteRenderer>().sprite = (Sprite)Resources.Load("b", typeof(Sprite));
    }
}
