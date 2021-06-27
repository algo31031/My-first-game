part_particles_create(obj_particles.part_sys, x+lengthdir_x(sprite_xoffset,direction), 
	y+lengthdir_y(sprite_yoffset, direction), obj_particles.part_type_hit_char, 1);

direction = point_direction(other.x, other.y, x, y);

with(other){
	// take no HP damage when there's shield
	if(shield){
		audio_play_sound(snd_forceField_000, 5, false);
		shield -= 1;
		shield = clamp(shield, 0, max_shield);
	
		exit;
	}

	// take HP damage when there's no shield
	if(!shield){
		HP -= 1;
	
		if(HP > 0) {
			audio_play_sound(snd_hurt, 5, false);
		}
		else {
			audio_play_sound(snd_space_die2, 5, false);
			part_particles_create(obj_particles.part_sys,x,y,obj_particles.part_type_explode,1);
			part_particles_create(obj_particles.part_sys,x,y,obj_particles.part_type_explode_smoke,1);
			repeat(3){
				part_particles_create(obj_particles.part_sys,x+random_range(-64,64),
									  y+random_range(-64,64),obj_particles.part_type_explode_small,1);
			}
			global.cam_shake = 3;			
			instance_destroy();
		}
	}
}