//Check movement buttons
right_key = keyboard_check(vk_right)
left_key = -keyboard_check(vk_left)

//Move
move = right_key + left_key;
horspeed = move * movespeed;

if (verspeed < 10) verspeed += grav;

//Y movement on grass
if (place_meeting(x, y+verspeed, Grass_Floor_Object))
{
    while(!place_meeting(x, y+sign(verspeed), Grass_Floor_Object))
    {
        y += sign(verspeed);
    }
    verspeed = 0;
}

//X movement on grass
if (place_meeting(x+horspeed, y, Grass_Floor_Object))
{
    while(!place_meeting(x+sign(horspeed), y, Grass_Floor_Object))
    {
        x += sign(horspeed);
    }
    horspeed = 0;
}

x += horspeed;
y += verspeed;
