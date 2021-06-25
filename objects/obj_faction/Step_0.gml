if(cooldown){
	cooldown--;
	if(gunslinger) cooldown--;
	if(cooldown < 0) cooldown = 0;
}

if(x < global.cam_x){
	instance_deactivate_object(id);
}
