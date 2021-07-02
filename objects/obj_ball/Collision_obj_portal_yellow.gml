if(other.locked){
	move_bounce_all(false);
	exit;
}

with(other){	
	var _char = instance_create_layer(dest_x,dest_y,"Instances",obj_final_char);
	obj_camera.target = _char;
}

with(obj_game) alarm[12] = 20*room_speed;