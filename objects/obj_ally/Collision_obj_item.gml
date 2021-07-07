//show_message(object_get_name(object_index))
//show_message(string(object_index))


switch(object_get_name(other.object_index)){	
	case "obj_item_coin":
		audio_play_sound(snd_coin, 1, 0);
		with(other){
			if(speed > 0) exit;
			else {	
				direction = point_direction(x,y,global.cam_x+global.cam_width-24,global.cam_y+88);
				speed = 15;
			}
		}
		break;
	case "obj_item_gunslinger":
		instance_destroy(other);
		audio_play_sound(snd_power, 2, 0);
		gunslinger = 1;
		break;
	case "obj_key_blue":
	case "obj_key_green":
	case "obj_key_red":
	case "obj_key_yellow":
		instance_destroy(other);
		audio_play_sound(snd_doorOpen_1, 2, 0);
		for (var i = 0; i < instance_number(other.target); i++;) {
			var _portal = instance_find(other.target,i);
			with(_portal){
				locked = false;
			}
		}
		break;
}