///@desc take damage

if(invincible){
	take_damage = 0;
	exit;
}

if(shield){
	audio_play_sound(snd_hit_shield, 5, false);
	shield -= take_damage;
	shield = clamp(shield, 0, max_shield);
	take_damage = 0;
	
	exit;
}

HP -= take_damage;
take_damage = 0;

if(HP > 0) {
	audio_play_sound(snd_hit_brick, 2, false);
}
else {
	audio_play_sound(snd_space_die1, 2, false);
	instance_destroy();
}