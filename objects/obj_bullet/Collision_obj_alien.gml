if(flag){
	part_particles_create(obj_particles.part_sys, x+lengthdir_x(sprite_xoffset,direction), 
		y+lengthdir_y(sprite_yoffset, direction), obj_particles.part_type_hit_char, 1);
						  
	instance_destroy();
	with(other){
		global.player_score += 100;
		instance_destroy();
		audio_play_sound(snd_forceField_000, 2, false);
	}
}