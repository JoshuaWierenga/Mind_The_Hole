//Check movement buttons
right_key = keyboard_check(vk_right)
left_key = -keyboard_check(vk_left)
up_key = keyboard_check_pressed(vk_space);

//Move
move = right_key + left_key;
horspeed = move * movespeed;

if (verspeed < 10) verspeed += grav;


//Grass
if (place_meeting(x, y+1, Grass_object))
{
    verspeed = up_key * -jumpspeed;
}

if (place_meeting(x, y+verspeed, Grass_object))
{
    while(!place_meeting(x, y+sign(verspeed), Grass_object))
    {
        y += sign(verspeed);
    }
    verspeed = 0;
}
   
if (place_meeting(x+horspeed, y, Grass_object))
{
    while(!place_meeting(x+sign(horspeed), y, Grass_object))
    {
        x += sign(horspeed);
    }
    horspeed = 0;
}
//Invisable Wall
if (place_meeting(x+horspeed, y, InvisWall_Object))
{
    while(!place_meeting(x+sign(horspeed), y, InvisWall_Object))
    {
        x += sign(horspeed);
    }
    horspeed = 0;
}

//Platforms
if (place_meeting(x, y+1, Gray_Blocks_Object))
{
    verspeed = up_key * -jumpspeed;
}

if (place_meeting(x+horspeed, y, Gray_Blocks_Object))
{
    while(!place_meeting(x+sign(horspeed), y, Gray_Blocks_Object))
    {
        x += sign(horspeed);
    }
    horspeed = 0;
}

if (place_meeting(x, y+verspeed, Gray_Blocks_Object))
{
    while(!place_meeting(x, y+sign(verspeed), Gray_Blocks_Object))
    {
        y += sign(verspeed);
    }
    verspeed = 0;
}

x += horspeed;
y += verspeed;
