left_x = 50;
left_y = 637;
right_x = room_width - left_x - 89;

space = virtual_key_add(0, 0, room_width, left_y, vk_space);
space2 = virtual_key_add(left_x + 90, left_y + 1, room_width - left_x - left_x - 90 - 90, room_height, vk_space);
left_arrow = virtual_key_add(left_x,left_y,89,70,vk_left);
right_arrow = virtual_key_add(right_x,left_y,89,70,vk_right);

draw_sprite_ext(Left_Arrow_Texture,0,left_x,left_y,1,1,0, -1, 0.5)
draw_sprite_ext(Right_Arrow_Texture,0,right_x,left_y,1,1,0, -1, 0.5)
