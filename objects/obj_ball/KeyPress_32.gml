if(!is_flying){
	audio_play_sound(snd_shoot_ball, 1, false);
	is_flying = true;
	speed = spd;
	direction = point_direction(x, y, global.cam_x+global.cam_width/2, global.cam_y);	
}