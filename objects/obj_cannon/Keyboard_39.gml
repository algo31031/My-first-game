if(x < room_width - sprite_xoffset){
	x += 3;
	x = clamp(x, sprite_xoffset, room_width-sprite_xoffset);
}