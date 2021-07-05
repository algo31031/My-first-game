if(keyboard_check_pressed(vk_up) and place_meeting(x, y-210, obj_pvz_block)) y -= 210;
if(keyboard_check_pressed(vk_down) and place_meeting(x, y+210, obj_pvz_block)) y += 210;
if(keyboard_check_pressed(vk_left) and place_meeting(x-70, y, obj_pvz_block)) x -= 70;
if(keyboard_check_pressed(vk_right) and place_meeting(x+70, y, obj_pvz_block)) x += 70;

if(!place_meeting(x,y, obj_pvz_turret)){
	if(keyboard_check_pressed(vk_space)){
		if(global.coins >= turret_values.turret_update[0]){
			global.coins -= turret_values.turret_update[0];
			audio_play_sound(snd_purchase,2,0);
			instance_create_layer(x,y,"Instances",obj_pvz_turret);
		} else {
			audio_play_sound(snd_button,2,0);
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
				audio_play_sound(snd_button,2,0);
			}
		} else {
			audio_play_sound(snd_button,2,0);
		}
	} else if(_akey){
		if(_t.gunmaster){
			audio_play_sound(snd_button,2,0);
		} else if(_t.gunslinger){
			if(global.coins >= turret_values.turret_update[2]){
				global.coins -= turret_values.turret_update[2];
				_t.gunmaster = true;
				audio_play_sound(snd_purchase,2,0);
			} else {
				audio_play_sound(snd_button,2,0);
			}
		} else {
			if(global.coins >= turret_values.turret_update[1]){
				global.coins -= turret_values.turret_update[1];
				_t.gunslinger = true;
				audio_play_sound(snd_purchase,2,0);
			} else {
				audio_play_sound(snd_button,2,0);
			}			
		}
	}
}