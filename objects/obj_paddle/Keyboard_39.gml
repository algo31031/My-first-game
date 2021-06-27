if(pause) exit;

if(x < room_width - sprite_xoffset){
	x += spd;
	x = clamp(x, sprite_xoffset, room_width-sprite_xoffset);
}