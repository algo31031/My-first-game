if(pause) exit;

if(x < room_width - sprite_xoffset){
	var _spd = spd - array_length(trash);
	_spd = clamp(_spd, 1, spd);
	x += _spd;
	x = clamp(x, sprite_xoffset, room_width-sprite_xoffset);
}