if(HP <= 0 && !global.space_level){
	global.space_level = true;
	global.player_score += 500;
	audio_play_sound(snd_explosion, 2, false);
	path_end();
	part_particles_create(obj_particles.part_sys,x,y,obj_particles.part_type_explode,1);
	speed = 0;
	alarm[1] = -1;
	alarm[2] = 2*room_speed;
}