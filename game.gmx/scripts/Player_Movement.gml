//Check movement buttons
right_key = keyboard_check(vk_right);
left_key = -keyboard_check(vk_left);
up_key = keyboard_check_pressed(vk_space);

//Move
move = right_key + left_key;
horspeed = move * movespeed;

if (verspeed < 10) verspeed += grav;

//Y movement on base_floor
if (place_meeting(x, y+1, base_floor))
{
    verspeed = up_key * -jumpspeed;
}

if (place_meeting(x, y+verspeed, base_floor))
{
    while(!place_meeting(x, y+sign(verspeed), base_floor))
    {
        y += sign(verspeed);
    }
    verspeed = 0;
}


//X movement on base_floor
if (place_meeting(x+horspeed, y, base_floor))
{
    while(!place_meeting(x+sign(horspeed), y, base_floor))
    {
        x += sign(horspeed);
    }
    horspeed = 0;
}

if (Control_Object.allow_move)
{
    x += horspeed;
    y += verspeed;
}
