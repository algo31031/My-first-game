if(x > (global.cam_x+global.cam_width)){ 
	instance_destroy();
	audio_stop_sound(snd_thrusterFire_000);	
}