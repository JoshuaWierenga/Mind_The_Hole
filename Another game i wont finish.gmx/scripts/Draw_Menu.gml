if point_in_rectangle(mouse_x, mouse_y, 384, 320, 736, 416)
{
    draw_sprite_ext(Spr_Start_Game,1,384,320,1.48,0.90,0.00,c_white,1);
}
else 
{
    draw_sprite_ext(Spr_Start_Game,0,384,320,1.48,0.90,0.00,c_white,1);    
}

if file_exists("Save.sav")
{
    ini_open("Save.sav")
    var LoadedRoom = ini_read_string("Save", "room", 1);
    ini_close();
    
    draw_text_transformed(0, 0, "Remove Saves : Dev Button", 1, 1, 0);
    
    if (LoadedRoom == "1")
    {
        draw_text_transformed(480, 365, "Start Game", 2, 2, 0);
    }
    else
    {
       draw_text_transformed(450, 365, "Continue Game", 2, 2, 0);
    }
}
else
{
    draw_text_transformed(480, 365, "Start Game", 2, 2, 0);
}
