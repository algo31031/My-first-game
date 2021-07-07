if(clicks) clicks--;
else {
	sprite_index = tochLit;	
}

part_particles_create(obj_particles.part_sys, mouse_x, mouse_y, obj_particles.part_type_hit_char, 1);