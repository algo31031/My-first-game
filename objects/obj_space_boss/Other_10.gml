///@desc take damage
event_inherited();

if(HP > 0) {
	audio_play_sound(snd_space_boss_hurt, 2, false);
	invincible = 3*room_speed;
	sprite_index = spr_sboss_hurt;
	alarm[1] = 30;
	
	var _x = 10080;
	var _y = 288;
	repeat(5){
		if(position_empty(_x, _y)){
			instance_create_layer(_x, _y, "Instances", obj_space_brick);
		}
		_y += 32;
	}
}
else {
	audio_play_sound(snd_space_boss_hurt,2,0);
	bullet_damage = 0;
	max_HP = 0;
	alarm[0] = -1;
	alarm[1] = -1;
	alarm[2] = -1;
	alarm[3] = 0.5*room_speed;
}