if(!is_extra){
	lives -= 1;
	audio_play_sound(snd_die, 1, false);		
	instance_create_layer(xstart, ystart, "Instances", obj_ball);
}