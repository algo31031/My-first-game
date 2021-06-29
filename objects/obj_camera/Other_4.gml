view_enabled = true;
view_visible[0] = true;	

global.cam_x = 0;
global.cam_y = 0;

camera_set_view_size(view_camera[0], global.cam_width, global.cam_height);

switch(room){
	case rm_platform:
		global.cam_y = room_height - global.cam_height;
		break;
	case rm_final:
		target = obj_final_char;
		break;
}