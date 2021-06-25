global.player_score += 50;
audio_play_sound(snd_power, 2, false);
instance_destroy(other);

switch(other.image_index){
	case space_powers.bullet:		
		switch(bullet){
			case bullets.laser:
				if(laser_power < max_weapon_power) laser_power++;
				if(laser_power <= max_bullet_damage) bullet_damage = laser_power;			
				exit;
			case bullets.missile:
				if(missile_power < max_weapon_power) missile_power++;
				if(missile_power <= max_bullet_damage) bullet_damage = missile_power;				
				exit;
		}
		
		exit;
	case space_powers.hp:
		HP = max_HP;
		exit;
	case space_powers.shield:
		shield = max_shield;
		invincible = true;
		image_alpha = 0.35;
		alarm[1] = 3*room_speed;
		exit;
	case space_powers.speed:
		gunslinger = true;
		alarm[2] = 8*room_speed;
		exit;
}

