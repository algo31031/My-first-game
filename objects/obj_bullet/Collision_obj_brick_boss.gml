if(flag){
	instance_destroy();
	with(other){
		HP -= 1;	
		if(HP > 0) audio_play_sound(snd_forceField_000, 2, false);
	}
}