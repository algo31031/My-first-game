if(clicks){
	audio_play_sound(snd_click, 2, 0);
	part_particles_create(obj_particles.part_sys, mouse_x, mouse_y, obj_particles.part_type_hit_char, 1);
	clicks -= 1;
} else {
	instance_destroy();
}