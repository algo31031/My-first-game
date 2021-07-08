///@desc take damage
if(invincible){
	take_damage = 0;
	exit;
}

// shield regeneration reset when taking damage
shield_restroe = 5*room_speed;

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
	} else {
		if(room != rm_pvz) lives -= 1;
	}
}