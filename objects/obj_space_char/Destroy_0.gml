if(room == rm_space){
	var _power = instance_create_layer(x,y,"Instances",obj_space_power);
	with(_power){
		alarm[0] = 6*room_speed;
		image_index = space_powers.bullet;
	}
}	