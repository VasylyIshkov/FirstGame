//Moving
if(keyboard_check(vk_right) or keyboard_check(ord("D"))){
x = x+4;
}
else if(keyboard_check(vk_left)or keyboard_check(ord("A"))){
	x = x-4;
}
else if(keyboard_check(vk_up)or keyboard_check(ord("W"))){
	y = y-4;
}
else if(keyboard_check(vk_down)or keyboard_check(ord("S"))){
	y = y+4;
}
image_angle = point_direction(x,y,mouse_x,mouse_y);

//Shot
if(mouse_check_button(mb_left))&&(cooldown<1)	{
	instance_create_layer(x,y,"BulletLayer",obj_bullet)
	cooldown = 10;
}
cooldown = cooldown-1;