if(other.locked){
	move_bounce_all(false);
	exit;
}

instance_deactivate_object(obj_ball);
instance_deactivate_object(obj_paddle);
instance_deactivate_object(obj_brick);

with(other){	
	var _char = instance_create_layer(dest_x,dest_y,"Instances",obj_final_char);
	obj_camera.target = _char;
}

with(obj_game) alarm[11] = 15*room_speed;