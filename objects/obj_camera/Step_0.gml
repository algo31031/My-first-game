//if(target != undefined and instance_exists(target)){
//	global.cam_x = target.x - global.cam_width/2;
//	global.cam_y = target.y - global.cam_height/2;
	
//	global.cam_x = clamp(global.cam_x, 0, room_width - global.cam_width);
//	global.cam_y = clamp(global.cam_y, 0, room_height - global.cam_height);
//}
// scroll camera: move right
if(global.h_move and (global.cam_width + global.cam_x) < room_width){
	global.cam_x += global.h_move;
}
// scroll camera: move up
if(global.v_move){
	if(global.cam_y > global.v_move_max){
		global.cam_y -= global.v_move;
	} else {
		global.cam_y = global.v_move_max;
		global.v_move= 0;
	}
}

// shake camera
global.cam_x += random_range(-global.cam_shake, global.cam_shake);
global.cam_y += random_range(-global.cam_shake, global.cam_shake);

if(global.cam_shake > 0){
	global.cam_shake -= 0.1;
	if(global.cam_shake < 0) global.cam_shake = 0;
}

// set camera position
global.cam_x = clamp(global.cam_x, 0, room_width - global.cam_width);
global.cam_y = clamp(global.cam_y, 0, room_height - global.cam_height);

camera_set_view_pos(view_camera[0], global.cam_x, global.cam_y);

// parallax
layer_x("Parallax", global.cam_x*0.75);
layer_x("Parallax1", global.cam_x*0.9);
layer_y("Parallax", global.cam_y*0.75);
layer_y("Parallax1", global.cam_y*0.9);
