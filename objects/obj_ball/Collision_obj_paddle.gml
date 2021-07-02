if(!is_flying) exit;

if(!is_extra and other.pause){
	audio_play_sound(snd_hit_wall, 1, false);
	speed = 0;
	is_flying = false;
	obj_paddle.pause = true;
	current_paddle = other;
	other.pause = false;
	// move camera
	if(room == rm_platform){
		global.v_move = max_spd;
		global.v_move_max = other.y+sprite_height/2+sprite_get_height(spr_brick)-global.cam_height;
	}
	exit;
}

y = other.y - other.sprite_yoffset - sprite_yoffset;
direction = point_direction(other.x, other.y, x, y);
audio_play_sound(snd_hit_wall, 1, false);
speed_up();