image_x = sprite_get_width(Left_Arrow);
image_y = sprite_get_height(Left_Arrow);

left_x = 50;
left_y = 637;
right_x = room_width - left_x - image_x;

space = virtual_key_add(0, 0, room_width, left_y, vk_space);
space2 = virtual_key_add(left_x + 90, left_y + 1, room_width - left_x - left_x - 90 - 90, room_height, vk_space);
left_arrow = virtual_key_add(left_x, left_y, image_x, image_y, vk_left);
right_arrow = virtual_key_add(right_x, left_y, image_x, image_y, vk_right);

draw_sprite_ext(Left_Arrow, 0, left_x, left_y, 1 ,1, 0, -1, 0.5);
draw_sprite_ext(Right_Arrow,0 , right_x, left_y, 1, 1, 0, -1, 0.5);
