draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
draw_set_colour(c_white);

for (m = 0; m < array_length_1d(menu); m += 1)
{
    draw_text(room_width/2, y + (m * space), string(menu[m]));
}

draw_sprite(Dark_Gray, room_width/2, x + 16, y + menupos * space);
