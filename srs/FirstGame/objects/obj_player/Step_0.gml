//Moving
//keyboard_check Возвращает, удерживается ли данная клавиша на клавиатуре в данный момент.
if(keyboard_check(vk_right) or keyboard_check(ord("D"))){
x = x+4;
}
if(keyboard_check(vk_left)or keyboard_check(ord("A"))){
	x = x-4;
}
if(keyboard_check(vk_up)or keyboard_check(ord("W"))){
	y = y-4;
}
if(keyboard_check(vk_down)or keyboard_check(ord("S"))){
	y = y+4;
}
if(y<57) y = 57;
if(y>711)y=711;
if(x<57) x = 57;
if(x>1991)x=1991;
//point_direction Возвращает направление включенного вектора в градусах.
//image_angle Текущий угол, под которым отрисовывается спрайт экземпляра
image_angle = point_direction(x,y,mouse_x,mouse_y);

//Shot
if(mouse_check_button(mb_left))&&(cooldown<1)	{
	//instance_create_layer создет обьект указанного типа в указанной позиции на указанном слое
	instance_create_layer(x,y,"BulletLayer",obj_bullet)
	cooldown = 10;
}
cooldown = cooldown-1;