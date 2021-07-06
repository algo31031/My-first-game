// Inherit the parent event
if(HP <= 0){
	HP = 1;
	shield = max_shield;
	x = spawn_x;
	y = spawn_y;
	jetpack = max_jetpack;
	part_particles_create(obj_particles.part_sys, x,y,obj_particles.part_type_portal,1);
	audio_play_sound(snd_portal, 1, 0);	
	exit;
}

event_inherited();

shield_regeneration(10*room_speed);

var _lkey = keyboard_check(vk_left) or keyboard_check_pressed(ord("A"));
var _rkey = keyboard_check(vk_right) or keyboard_check_pressed(ord("D"));
var _jkey = keyboard_check(vk_up) or keyboard_check_pressed(ord("W"));

if(place_meeting(x, y+1, obj_block)){
	vspd = 0;
} else {
	if(vspd < max_spd) vspd += grav;	
}

if(_jkey and jetpack){
	jetpack--;
	vspd = -jspd;
	if(!audio_is_playing(snd_thrusterFire_000)) audio_play_sound(snd_thrusterFire_000, 1, 1);
	part_particles_create(obj_particles.part_sys,x+(direction == 0 ? -9 : 9), y+3, obj_particles.part_type_jetpack_exhaust,1);
}
if(!jetpack and audio_is_playing(snd_thrusterFire_000)){
	audio_stop_sound(snd_thrusterFire_000);
}
if(!_jkey and jetpack < max_jetpack){
	jetpack += 3;
}

if(_lkey){
	direction = 180;
	if(hspd > -spd) hspd -= fric;
	else hspd = -spd;
	//if(place_meeting(x-1,y,obj_block) and !place_meeting(x,y+1,obj_block) and !_rkey) vspd = -jspd;
}

if(_rkey){
	direction = 0;
	if(hspd < spd) hspd += fric;
	else hspd = spd;
	//if(place_meeting(x+1,y,obj_block) and !place_meeting(x,y+1,obj_block) and !_lkey) vspd = -jspd;
}

if((_lkey and _rkey) or (!_lkey and !_rkey)){
	if(hspd != 0){
		if(hspd > 0){
			hspd -= fric;
		} else {
			hspd += fric
		}
	}
}

if(place_meeting(x+hspd, y, obj_block)){
	while(!place_meeting(x+sign(hspd), y, obj_block)){
		x += sign(hspd);
	}
	hspd = 0;
}

x += hspd;

if(place_meeting(x, y+vspd, obj_block)){
	while(!place_meeting(x, y+sign(vspd), obj_block)){
		y += sign(vspd);
	}
	vspd = 0;
}

y += vspd;

x = clamp(x, sprite_xoffset, room_width-sprite_xoffset);
y = clamp(y, sprite_yoffset, room_height+1);

if(y > room_height){
	HP = 0;
}