///make_blocks(xcord, ycord, use collisions?, use gravity?, wait for collision?, gravity speed, texture, object id)

if (argument2) block = instance_create(argument0, argument1, Gravity_Collisions_Object);
else block = instance_create(argument0, argument1,Gravity_NoCollisions_Object);

with (block)
{
    use_gravity = argument3;
    waitforcontact = argument4;
    grav = argument5;
    sprite_index = argument6;
    object = argument7;
}
