if obj_Control.enemy_movement == true
{
    horspeed = dir * movespeed;
    verspeed += grav;
    
    if (place_meeting(x+horspeed, y, Grass_object))
    {
        while(!place_meeting(x+sign(horspeed), y, Grass_object))
        {
            x += sign(horspeed);
        }
        horspeed = 0;
        
        dir *= -1;
    }
    
    if (place_meeting(x, y+verspeed, Grass_object))
    {
        while(!place_meeting(x, y+sign(verspeed), Grass_object))
        {
            y += sign(verspeed);
        }
        verspeed = 0;
    }
    
    x += horspeed;
    y += verspeed;
}
