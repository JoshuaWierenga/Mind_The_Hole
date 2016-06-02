//Check movement buttons
right_key = keyboard_check(vk_right);
left_key = -keyboard_check(vk_left);
up_key = keyboard_check_pressed(vk_space);

//Move
move = right_key + left_key;
horspeed = move * movespeed;

if (verspeed < 10) verspeed += grav;

//Y movement on grass
if (place_meeting(x, y+1, Grass_Floor_Object))
{
    verspeed = up_key * -jumpspeed;
}

Gravity_Control();

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
