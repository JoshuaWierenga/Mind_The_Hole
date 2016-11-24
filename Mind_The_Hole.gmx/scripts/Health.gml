if (argument0 == 0)
{
    draw_sprite_ext(Health_Bar, Player_Object.hp + (Player_Object.image_index * 3), 20, 20, 1, 1,0, -1, 0.5);
}

else
{
    draw_sprite_ext(Health_Bar, pause_temp_health + (pause_temp_level * 3), 20, 20, 1, 1,0, -1, 0.5);
}
