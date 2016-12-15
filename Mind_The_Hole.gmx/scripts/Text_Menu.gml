///Text_Menu(menu_X, menu_Y, distance from menu to selector);
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
draw_set_colour(c_white);

for (m = 0; m < array_length_1d(menu); m += 1)
{
    draw_text(argument0, argument1 + (m * space), string(menu[m]));
}

if (Control_Object.osphone == 0)
{
    draw_sprite(Dark_Gray, 0, argument0 - argument2, argument1 - 16 + menu_pos * space);
}

draw_set_halign(fa_left);
draw_set_valign(fa_left);
draw_set_colour(c_black);
