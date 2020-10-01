//instance_exists Возвращает, существует ли экземпляр данного объекта в текущей комнате.
if(instance_exists(obj_player)){
	//move_towards_point Перемещает экземпляр к заданной точке с заданной скоростью.
move_towards_point(obj_player.x,obj_player.y,spd);
}
image_angle = direction;
if(hp<=0){
	with(obj_score) thescore+=5;
	instance_destroy();
}
	