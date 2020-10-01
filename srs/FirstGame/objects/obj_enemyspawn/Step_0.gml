image_xscale = min(image_xscale+0.02,1);
image_yscale = image_xscale;

//instance_change Изменяет вызывающий экземпляр на экземпляр другого объекта.
if(image_xscale==1){
	instance_change(obj_enemy,true);
}