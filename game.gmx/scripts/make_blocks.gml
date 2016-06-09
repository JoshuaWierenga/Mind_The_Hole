///make_blocks(xcord, ycord,collision first, use gravity?, gravity speed, texture, object id)
block = instance_create(argument0, argument1, Gravity_Floor_Object);
with (block)
{
    waitforcontact = argument2;
    use_gravity = argument3;
    grav = argument4;
    sprite_index = argument5;
    object = argument6;
}
