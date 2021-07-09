if(!global.brick_boss){
	global.brick_boss = true;
	instance_create_layer(room_width+128, room_height*0.25, "Powers", obj_brick_boss);
}