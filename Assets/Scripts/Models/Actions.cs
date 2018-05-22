using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class Actions
{
    //private LocationVectors Locations;

    private List<char> ActionList;
    private int CurrentNumber;

    public Actions(List<char> actions)
    {
        
        ActionList = actions;
        CurrentNumber = 0;
        //Locations = new LocationVectors();
    }

    public char GetNextAction()
    {
        Debug.Log("Action_ExecuteAction");
        char currentAction = ActionList[CurrentNumber];

        CurrentNumber += 1;
        return currentAction;
    }

    public int ActionsLeft() {
        return ActionList.Count - CurrentNumber;
    }
}