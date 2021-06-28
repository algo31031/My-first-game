shield_regeneration(20*room_speed);

if(invincible) invincible--;

if(y > (global.cam_y+global.cam_height)){
	instance_destroy();
	global.final_level = true;
}