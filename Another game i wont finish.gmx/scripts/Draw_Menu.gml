var base_width = 512;
var base_height = 256;
var aspect = display_get_width() / display_get_height();

display_set_gui_size(base_height * aspect, base_height);

x1
y1
x2
y2
x3
y3
x4
y4

if point_in_rectangle(mouse_x, mouse_y, display_get_gui_width()/2-display_get_gui_width()/8, display_get_gui_height()/2-display_get_gui_height()/8, display_get_gui_width()/2+display_get_gui_width()/8, display_get_gui_height()/2-display_get_gui_height()/8);
{
    draw_sprite_pos(Spr_Start_Game, 0, display_get_gui_width()/2-display_get_gui_width()/8, display_get_gui_height()/2-display_get_gui_height()/8, display_get_gui_width()/2+display_get_gui_width()/8, display_get_gui_height()/2-display_get_gui_height()/8,display_get_gui_width()/2+display_get_gui_width()/8, display_get_gui_height()/2+display_get_gui_height()/8,display_get_gui_width()/2-display_get_gui_width()/8, display_get_gui_height()/2-display_get_gui_height()/8, 1);

}
else 
{
    //draw_sprite_ext(Spr_Start_Game,0,36,48,1,0.90,0.00,c_white,1);   
    //draw_sprite_general(Spr_Start_Game, 0, display_get_gui_width()/4, 320, display_get_gui_width()/2, 509.44, ); 
    draw_sprite_pos(Spr_Start_Game, 0, display_get_gui_width()/2-display_get_gui_width()/8, display_get_gui_height()/2-display_get_gui_height()/8, display_get_gui_width()/2+display_get_gui_width()/8, display_get_gui_height()/2-display_get_gui_height()/8,display_get_gui_width()/2+display_get_gui_width()/8, display_get_gui_height()/2+display_get_gui_height()/8,display_get_gui_width()/2-display_get_gui_width()/8, display_get_gui_height()/2-display_get_gui_height()/8, 1);
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
