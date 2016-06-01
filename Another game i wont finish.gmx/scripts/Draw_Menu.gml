var buttonx = display_get_gui_width()/4;
var buttony = display_get_gui_height()/3;
buttonx2 = buttonx*2;
buttony2 = buttony;

if point_in_rectangle(mouse_x, mouse_y, buttonx, buttony, buttonx*3, buttony*2)
{
    draw_sprite_pos(Spr_Start_Game, 1, buttonx-buttonx2, buttony-buttony2, buttonx+buttonx2, buttony-buttony2, buttonx+buttonx2, buttony+buttony2, buttonx-buttonx2, buttony+buttony2, 1);
}
else
{
    draw_sprite_pos(Spr_Start_Game, 0, buttonx-buttonx2, buttony-buttony2, buttonx+buttonx2, buttony-buttony2, buttonx+buttonx2, buttony+buttony2, buttonx-buttonx2, buttony+buttony2, 1);
}

draw_text(buttonx, buttony, string(buttonx) + " " + string(buttony))
draw_text(buttonx*3, buttony, string(buttonx*3) + " " + string(buttony))
draw_text(buttonx, buttony*2, string(buttonx) + " " + string(buttony*2))
draw_text(buttonx*3, buttony*2, string(buttonx*3) + " " + string(buttonx*2))

draw_text(0, 20, string(mouse_x) + " : " + string(mouse_y));
draw_text(0, 80, string(display_get_gui_width()) + " : " + string(display_get_gui_height()))

if file_exists("Save.sav")
{
    ini_open("Save.sav")
    var LoadedRoom = ini_read_string("Save", "room", 1);
    ini_close();
    
    draw_text_transformed(0, 40, "Remove Saves : Dev Button", 1, 1, 0);
    
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
