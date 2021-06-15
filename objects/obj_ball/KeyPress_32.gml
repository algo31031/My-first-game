if(!is_flying){
	audio_play_sound(snd_shoot_ball, 1, false);
	is_flying = true;
	speed = spd;
	direction = (x < room_width/2) ? irandom_range(90, 135) : irandom_range(45, 90);	
}