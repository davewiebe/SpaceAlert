using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{

    public float Speed;

    public Trajectory RedTrajectory;
    public Threat Threats;
    private List<Player> Players;

    public Ship Ship;
    
    void Start()
    {
        SetupTheGame();
        StartCoroutine(PlayTheGame());
    }
    private void SetupTheGame()
    {
        Ship = new Ship();
        //RedTrajectory = new Trajectory(1);

        Players = new List<Player>();
        var actions = new Actions(new List<char> { 'A', 'L', 'D', 'B', 'R',  'B', 'R', 'B', 'L', 'B' });
        AddPlayer("purplePerson", "Purple", actions);
    }

    private void AddPlayer(string componentName, string colour, Actions actions)
    {
        var purple = GameObject.Find(componentName).GetComponent<Player>();
        purple.PlayerColour = colour;
        purple.CurrentRoom = Ship.UpperWhite;
        purple.Actions = actions;
        Players.Add(purple);
    }

    IEnumerator PlayTheGame()
    {
        Debug.Log("PlayTheGame");
        NewThreatsAppear();

        Debug.Log("Player Actions");
        yield return StartCoroutine(PlayersPerformActions());

        Debug.Log("Player Damage Dealt");
        PlayerDamageIsDealt();

        Debug.Log("Threats Move And Attack");
        ThreatsMoveAndAttack();
    }

    private void PlayerDamageIsDealt()
    {
    }

    private void ThreatsMoveAndAttack()
    {
    }

    IEnumerator PlayersPerformActions()
    {
        while (Players[0].Actions.ActionsLeft() > 0)
        {
            Debug.Log("TurnManager_PlayersPerformActions");
            yield return StartCoroutine(Players[0].ExecuteNextAction());
        }
    }

    private void NewThreatsAppear()
    {

    }

    // Update is called once per frame
    void Update()
    {
    }
}


