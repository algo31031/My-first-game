// Inherit the parent event
event_inherited();

if(HP == 1 and !global.pets.cat_bw){
	global.pets.cat_bw = 1;
	sprite_index = bwcat_idle_blink_strip8;
	image_xscale = 2;
	image_yscale = 2;
	alarm[0] = 10*room_speed;
}

