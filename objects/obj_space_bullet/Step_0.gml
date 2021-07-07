if(target_locked != undefined){	
	if(target and !instance_exists(target_locked)){
		target = -1;
		direction = 0;
	}

	if(!target){
		target = instance_nearest(x, y, target_locked);
	}

	if(instance_exists(target)){
		direction = point_direction(x,y,target.x,target.y);
	}
}