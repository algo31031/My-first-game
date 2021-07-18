if(target_locked != undefined){	
	if(!instance_exists(target_locked)){
		target = -1;
		direction = 0;
		exit;
	}

	if(!target || !instance_exists(target)){
		target = instance_nearest(x, y, target_locked);
	}

	if(instance_exists(target)){
		direction = point_direction(x,y,target.x,target.y);
	}
}