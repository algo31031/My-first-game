for (var i = 0; i < instance_number(obj_pvz_turret); ++i;){
    with(instance_find(obj_pvz_turret,i)){
		direction = 0;
		speed = 7;
	}
}

alarm[1] = 4*room_speed;