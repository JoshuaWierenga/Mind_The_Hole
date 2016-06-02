/*if (place_meeting(x, y+verspeed, Grass_Floor_Texture))
{
    while(!place_meeting(x, y+sign(verspeed), Grass_Floor_Object))
    {
        y += sign(verspeed);
    }
    verspeed = 0;
}*/

draw_text(0, 0, string(x) + " : " + string(y) + " : " + string(y+verspeed));

if !(position_empty(x, y+verspeed))
{
    while(position_empty(x, y+sign(verspeed)))
    {
        y += sign(verspeed);
    }
    verspeed = 0;
}
