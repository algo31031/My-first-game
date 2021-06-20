///@desc take damage

shield_restroe = 5*room_speed;

if(shield){
	audio_play_sound(snd_forceField_000, 5, false);
	shield -= take_damage;
	shield = clamp(shield, 0, max_shield);
	take_damage = 0;
	
	exit;
}

if(!shield and take_damage){
	HP -= take_damage;
	take_damage = 0;
	
	if(HP > 0) {
		audio_play_sound(snd_hurt, 5, false);
	}
	else {
		audio_play_sound(snd_space_die2, 5, false);
		instance_destroy();
		instance_create_layer(global.cam_x, y = room_height/2, "Instances", obj_space_char);
	}
}