global.player_score += 50;
audio_play_sound(snd_power, 2, false);
instance_destroy(other);

switch(other.image_index){
	case space_powers.bullet:
		if(bullet_damage < max_bullet_damage) bullet_damage += 1;
		exit;
	case space_powers.hp:
		HP = max_HP;
		exit;
	case space_powers.shield:
		shield = max_shield;
		exit;
	case space_powers.speed:
		move_spd = 6;
		alarm[2] = 10*room_speed;
		exit;
}

