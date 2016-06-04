if (verspeed < 10) verspeed += grav;

if (place_meeting(x, y+verspeed, gravity_Object))
{
    while(!place_meeting(x, y+sign(verspeed), gravity_Object))
    {
        y += sign(verspeed);
    }
    verspeed = 0;
}

y += verspeed;
