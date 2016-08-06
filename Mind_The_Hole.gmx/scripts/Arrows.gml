left_x = 50;
left_y = 637;
right_x = left_x + 89;

draw_sprite_ext(Left_Arrow_Texture,0,left_x,left_y,1,1,0, -1, 0.5)
draw_sprite_ext(Right_Arrow_Texture,0,right_x,left_y,1,1,0, -1, 0.5)

left_arrow = virtual_key_add(left_x,left_y,89,70,vk_left);
right_arrow = virtual_key_add(right_x,left_y,89,70,vk_right);
