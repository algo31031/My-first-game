if((keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))) and place_meeting(x, y-210, obj_pvz_block)){ 
	y -= 210;
	audio_play_sound(snd_move_cross,2,0);
}
if((keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"))) and place_meeting(x, y+210, obj_pvz_block)){ 
	y += 210;
	audio_play_sound(snd_move_cross,2,0);
}
if((keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A"))) and place_meeting(x-70, y, obj_pvz_block)){ 
	x -= 70;
	audio_play_sound(snd_move_cross,2,0);
}
if((keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"))) and place_meeting(x+70, y, obj_pvz_block)){ 
	x += 70;
	audio_play_sound(snd_move_cross,2,0);
}

if(shake_x > 0) shake_x -= 0.25;
if(shake_x < 0) shake_x += 0.25;
if(shake_y < 0) shake_y += 0.25;
if(shake_y < 0) shake_y += 0.25;

if(!place_meeting(x,y, obj_pvz_turret)){
	if(keyboard_check_pressed(vk_space)){
		if(global.coins >= turret_values.turret_update[0]){
			global.coins -= turret_values.turret_update[0];
			audio_play_sound(snd_purchase,2,0);
			instance_create_layer(x,y,"Instances",obj_pvz_turret);
		} else {
			audio_play_sound(snd_error5,2,0);
			shake_x = choose(-2,2);
			shake_y = choose(-2,2);
		}
	}
} else {
	var _t = instance_nearest(x,y,obj_pvz_turret);
	var _ckey = keyboard_check_pressed(vk_control);
	var _akey = keyboard_check_pressed(vk_alt);
	
	if(_ckey){
		if(_t.bullet_damage < 3){
			if(global.coins >= turret_values.weapon_update[_t.bullet_damage]){
				global.coins -= turret_values.weapon_update[_t.bullet_damage];
				audio_play_sound(snd_purchase,2,0);
				_t.bullet_damage += 1;
			} else {
				shake_x = choose(-2,2);
				shake_y = choose(-2,2);				
				audio_play_sound(snd_error5,2,0);
			}
		} else {
			audio_play_sound(snd_error5,2,0);
		}
	} else if(_akey){
		if(_t.gunmaster){
			audio_play_sound(snd_error5,2,0);
		} else if(_t.gunslinger){
			if(global.coins >= turret_values.turret_update[2]){
				global.coins -= turret_values.turret_update[2];
				_t.gunmaster = true;
				_t.max_shield = 3;
				_t.shield = 3;
				audio_play_sound(snd_purchase,2,0);
			} else {
				shake_x = choose(-2,2);
				shake_y = choose(-2,2);				
				audio_play_sound(snd_error5,2,0);
			}
		} else {
			if(global.coins >= turret_values.turret_update[1]){
				global.coins -= turret_values.turret_update[1];
				_t.gunslinger = true;
				_t.max_shield = 2;
				_t.shield = 2;
				audio_play_sound(snd_purchase,2,0);
			} else {
				shake_x = choose(-2,2);
				shake_y = choose(-2,2);				
				audio_play_sound(snd_error5,2,0);
			}			
		}
	}
}