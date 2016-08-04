verspeed += grav;

if (place_meeting(round(x), round(y+verspeed), Collisions_Object))
{
    while(!place_meeting(round(x), round(y+verspeed), Collisions_Object))
    {
        x += sign(verspeed);
    }
    verspeed = 0;
}

if (Control_Object.allow_move)
{   
    y += verspeed;
}
