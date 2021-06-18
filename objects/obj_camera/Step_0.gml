//if(target != undefined and instance_exists(target)){
//	global.camX = target.x - global.cam_width/2;
//	global.camY = target.y - global.cam_height/2;
	
//	global.camX = clamp(global.camX, 0, room_width - global.cam_width);
//	global.camY = clamp(global.camY, 0, room_height - global.cam_height);
//}
if(h_move and (global.cam_width + global.camX) < room_width){
	global.camX += h_move;
}

global.camX = clamp(global.camX, 0, room_width - global.cam_width);
global.camY = clamp(global.camY, 0, room_height - global.cam_height);

global.camX += random_range(-global.cam_shake, global.cam_shake);
global.camY += random_range(-global.cam_shake, global.cam_shake);

if(global.cam_shake > 0){
	global.cam_shake -= 0.2;
	if(global.cam_shake < 0) global.cam_shake = 0;
}

camera_set_view_pos(view_camera[0], global.camX, global.camY);

layer_x("Parallax", global.camX*0.75);
layer_x("Parallax1", global.camX*0.9);