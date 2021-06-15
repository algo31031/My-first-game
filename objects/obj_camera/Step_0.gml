if(target != undefined and instance_exists(target)){
	global.camX = target.x - global.cam_width/2;
	global.camY = target.y - global.cam_height/2;
	
	global.camX = clamp(global.camX, 0, room_width - global.cam_width);
	global.camY = clamp(global.camY, 0, room_height - global.cam_height);
}

camera_set_view_pos(view_camera[0], global.camX, global.camY);