// Inherit the parent event
event_inherited();

var _lkey = keyboard_check(vk_left);
var _rkey = keyboard_check(vk_right);
var _jkey = keyboard_check_pressed(vk_up);

if(place_meeting(x, y+1, obj_block)){
	air_jump = 1;
	vspd = 0;
	
	if(_jkey) vspd = -jspd;
	
} else {
	if(vspd < max_spd) vspd += grav;
	
	if(_jkey and air_jump){
		vspd = -jspd;
		air_jump -= 1;
	}
}

if(_lkey){
	direction = 180;
	hspd = -spd;
	if(place_meeting(x-1,y,obj_block) and !place_meeting(x,y+1,obj_block) and !_rkey) vspd = -jspd;
}

if(_rkey){
	direction = 0;
	hspd = spd;
	if(place_meeting(x+1,y,obj_block) and !place_meeting(x,y+1,obj_block) and !_lkey) vspd = -jspd;
}

if((_lkey and _rkey) or (!_lkey and !_rkey)){
	hspd = 0;
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
