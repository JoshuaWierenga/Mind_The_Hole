arrow_image_x = sprite_get_width(Left_Arrow);
arrow_image_y = sprite_get_height(Left_Arrow);

arrow_left_x = 50;
arrow_left_y = 637;
arrow_right_x = room_width - arrow_left_x - arrow_image_x;

space_main = virtual_key_add(0, 89, room_width, arrow_left_y - 89, vk_space);
space_extra_1 = virtual_key_add(85, 0, room_width - 85, 88, vk_space);
space_extra_2 = virtual_key_add(arrow_left_x + arrow_image_x, arrow_left_y + 1, arrow_right_x - arrow_left_x - arrow_image_x, room_height, vk_space);

left_arrow = virtual_key_add(arrow_left_x, arrow_left_y, arrow_image_x, arrow_image_y, vk_left);
right_arrow = virtual_key_add(arrow_right_x, arrow_left_y, arrow_image_x, arrow_image_y, vk_right);

pause = virtual_key_add(20, 20, 64, 68, vk_escape);
