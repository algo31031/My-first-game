if(x > sprite_xoffset){
	x -= 3;
	x = clamp(x, sprite_xoffset, room_width-sprite_xoffset);
}