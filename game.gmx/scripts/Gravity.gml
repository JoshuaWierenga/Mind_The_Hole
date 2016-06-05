if (verspeed < 10) verspeed += grav;

if (place_meeting(x, y+verspeed, gravity_Object))
{
    while(!place_meeting(x, y+sign(verspeed), gravity_Object))
    {
        y += sign(verspeed);
    }
    verspeed = 0;
}

if (Control_Object.allow_move)
{
    y += verspeed;
}
