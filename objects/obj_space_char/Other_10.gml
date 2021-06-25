///@desc take damage
if(invincible){
	take_damage = 0;
	exit;
}

// shield regeneration reset when taking damage
shield_restroe = 5*room_speed;
part_particles_create(obj_particles.part_sys, x+sprite_xoffset, other.y, obj_particles.part_type_hit_char, 1);

// take no HP damage when there's shield
if(shield){
	audio_play_sound(snd_forceField_000, 5, false);
	shield -= take_damage;
	shield = clamp(shield, 0, max_shield);
	take_damage = 0;
	
	exit;
}

// take HP damage when there's no shield
if(!shield and take_damage){
	HP -= take_damage;
	take_damage = 0;
	
	if(HP > 0) {
		audio_play_sound(snd_hurt, 5, false);
	}
	else {
		audio_play_sound(snd_space_die2, 5, false);
		instance_destroy();
		lives -= 1;
		if(lives > 0){
			instance_create_layer(global.cam_x+sprite_xoffset, room_height/2, "Instances", obj_space_char);
		} else {
			global.cam_x = 0;
		}
	}
}