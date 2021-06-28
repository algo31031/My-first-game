enum factions {
	neutral = 0,
	ally = 1,
	enemy = 2
}

enum bullets {
	laser = 10,
	missile = 20,
	fireball = 30
}

enum space_powers {
	bullet = 0,
	shield = 1,
	hp = 2,
	speed = 3
}

function shield_regeneration(_time){
	if(_time == undefined) _time = 10*room_speed;
	
	if(shield_restroe){
		shield_restroe--;
		shield_restroe = clamp(shield_restroe, 0, _time);
	}

	if(shield < max_shield and !shield_restroe){
		shield += 1;
		shield = clamp(shield, 0, max_shield);
		audio_play_sound(snd_shield_restore, 2, false);
	
		if(shield < max_shield) shield_restroe = _time/2;
	}
}