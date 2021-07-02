if(other.locked){
	move_bounce_all(false);
} else {
	spawn_x = other.dest_x;
	spawn_y = other.dest_y;
	x = spawn_x;
	y = spawn_y;
	part_particles_create(obj_particles.part_sys, x,y,obj_particles.part_type_portal,1);
	audio_play_sound(snd_portal, 1, 0);
}