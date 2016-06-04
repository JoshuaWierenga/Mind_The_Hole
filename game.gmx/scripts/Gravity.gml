if (verspeed < 10) verspeed += grav;

if (place_meeting(x, y+verspeed, base_floor))
{
    while(!place_meeting(x, y+sign(verspeed), base_floor))
    {
        y += sign(verspeed);
    }
    verspeed = 0;
}

y += verspeed;
