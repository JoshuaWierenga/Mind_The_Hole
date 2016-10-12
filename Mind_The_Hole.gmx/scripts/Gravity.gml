verspeed += grav;

if (place_meeting(round(x), round(y+verspeed), argument0))
{
    while(!place_meeting(round(x), round(y+verspeed), argument0))
    {
        x += sign(verspeed);
    }
    verspeed = 0;
}

if (Control_Object.allow_move)
{   
    y += verspeed;
}
