using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class Player : MonoBehaviour
{
    private Vector3 MoveTowards;
    public Room CurrentRoom { get; set; }
    public Actions Actions { get; set; }

    public bool Moving { get; set; }
    public string PlayerColour { get; set; }

    // Use this for initialization
    void Start()
    {
        Moving = false;
    }

    // Update is called once per frame
    void Update()
    {
        transform.position = Vector3.MoveTowards(transform.position, MoveTowards, 0.05f);
        if (transform.position == MoveTowards)
            Moving = false;
    }

    public void MoveCharacterToCurrentRoom()
    {
        Moving = true;
        MoveTowards = CurrentRoom.Vector;
    }

    public IEnumerator ExecuteNextAction()
    {
        Debug.Log("Player_ExecuteNextAction");
        var action = Actions.GetNextAction();

        if (action == 'L')
            MoveLeft();
        else if (action == 'R')
            MoveRight();
        else if (action == 'D')
            DeckChange();
        else if (action == 'A')
            PushAButton();
        else if (action == 'B')
            PushBButton();
        yield return new WaitWhile(() => Moving);
    }

    private void PushAButton()
    {
        // Todo: Animation
        CurrentRoom.PushA();
    }

    private void PushBButton()
    {
        // Todo: Animation
        CurrentRoom.PushB();
    }

    private void DeckChange()
    {
        CurrentRoom = CurrentRoom.GetDeckChangeRoom();
        MoveCharacterToCurrentRoom();
    }

    private void MoveRight()
    {
        CurrentRoom = CurrentRoom.GetRightRoom();
        MoveCharacterToCurrentRoom();
    }

    private void MoveLeft()
    {
        CurrentRoom = CurrentRoom.GetLeftRoom();
        MoveCharacterToCurrentRoom();
    }
}
