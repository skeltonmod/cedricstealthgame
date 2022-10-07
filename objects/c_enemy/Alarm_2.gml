spotted = 1
alarm[4] = pause_time/2
if team_alert
{
    with(c_enemy)
    {
        if can_spot = 1
        {
            can_spot = 0
            alarm[2] = 20
        }
    }
}