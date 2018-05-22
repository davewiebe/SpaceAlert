using System.Collections.Generic;

public class Trajectory
{
    private List<char> Track;

    public Trajectory(int number)
    {
        Track = new List<char> { ' ', ' ', 'X', '_', 'Y', 'Z'};
    }
}