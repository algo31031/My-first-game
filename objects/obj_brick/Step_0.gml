if(HP <= 0) instance_destroy();

if(y > (global.cam_y + global.cam_height)) instance_deactivate_object(id);

if(smiley == spr_angry){
	x += random_range(-1,1);
	y += random_range(-1,1);
}