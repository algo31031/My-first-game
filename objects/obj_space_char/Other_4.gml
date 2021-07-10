switch(room){
	case rm_space:
		//path_start(path_space_enter, 5, path_action_stop, false);
		//alarm[0] = 1*room_speed;
		speed = 2;
		direction = 0;

		with(obj_camera){
			if(!global.h_move) global.h_move = 2;
		}		
		break;
		
	case rm_platform:
		audio_play_sound(snd_fall, 2, false);
		path_start(path_platform_enter, 3, path_action_stop, false);
		alarm[3] = 9*room_speed;
		break;	
}


if(room == rm_space) show_arrow = 3*room_speed;
arrow_span = 0;