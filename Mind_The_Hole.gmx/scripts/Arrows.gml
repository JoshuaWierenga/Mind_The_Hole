image_x = sprite_get_width(Left_Arrow);
image_y = sprite_get_height(Left_Arrow);

left_x = 50;
left_y = 637;
right_x = room_width - left_x - image_x;

space_main = virtual_key_add(0, 89, room_width, left_y - 89, vk_space);
space_extra_1 = virtual_key_add(85, 0, room_width - 85, 88, vk_space);
space_extra_2 = virtual_key_add(left_x + image_x, left_y + 1, right_x - left_x - image_x, room_height, vk_space);
left_arrow = virtual_key_add(left_x, left_y, image_x, image_y, vk_left);
right_arrow = virtual_key_add(right_x, left_y, image_x, image_y, vk_right);

draw_sprite_ext(Left_Arrow, 0, left_x, left_y, 1 ,1, 0, -1, 0.5);
draw_sprite_ext(Right_Arrow,0 , right_x, left_y, 1, 1, 0, -1, 0.5);
