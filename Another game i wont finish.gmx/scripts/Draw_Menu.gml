var buttonx = display_get_gui_width()/2;
var buttony = display_get_gui_height()/2;
var buttonx2 = display_get_gui_width()/8;
var buttony2 = display_get_gui_height()/8;

if point_in_rectangle(mouse_x, mouse_y, buttonx-buttonx2, buttony-buttony2, buttonx+buttonx2, buttony+buttony2)
{
    draw_sprite_pos(Spr_Start_Game, 1, buttonx-buttonx2, buttony-buttony2, buttonx+buttonx2, buttony-buttony2, buttonx+buttonx2, buttony+buttony2, buttonx-buttonx2, buttony+buttony2, 1);
}
else
{
    draw_sprite_pos(Spr_Start_Game, 0, buttonx-buttonx2, buttony-buttony2, buttonx+buttonx2, buttony-buttony2, buttonx+buttonx2, buttony+buttony2, buttonx-buttonx2, buttony+buttony2, 1);
}

draw_text(0, 0, string(mouse_x) + " : " + string(mouse_y));

if file_exists("Save.sav")
{
    ini_open("Save.sav")
    var LoadedRoom = ini_read_string("Save", "room", 1);
    ini_close();
    
    draw_text_transformed(0, 0, "Remove Saves : Dev Button", 1, 1, 0);
    
    if (LoadedRoom == "1")
    {
        draw_text_transformed(1, 1, "Start Game", 1, 1, 0);
    }
    else
    {
       draw_text_transformed(1, 1, "Continue Game", 1, 1, 0);
    }
}
else
{
    draw_text_transformed(buttonx - 48, buttony - 7.5, "Start Game", 1, 1, 0);
}
