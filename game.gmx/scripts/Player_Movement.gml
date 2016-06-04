//Check movement buttons
right_key = keyboard_check(vk_right);
left_key = -keyboard_check(vk_left);
up_key = keyboard_check_pressed(vk_space);

//Move
move = right_key + left_key;
horspeed = move * movespeed;

if (verspeed < 10) verspeed += grav;

//Y movement on gravity_Object
if (place_meeting(x, y+1, gravity_Object))
{
    verspeed = up_key * -jumpspeed;
}

if (place_meeting(x, y+verspeed, gravity_Object))
{
    while(!place_meeting(x, y+sign(verspeed), gravity_Object))
    {
        y += sign(verspeed);
    }
    verspeed = 0;
}

//X movement on gravity_Object
if (place_meeting(x+horspeed, y, gravity_Object))
{
    while(!place_meeting(x+sign(horspeed), y, gravity_Object))
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
