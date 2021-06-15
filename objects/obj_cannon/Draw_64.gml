var _x = 24;
repeat(cannonball_count){
	draw_sprite_ext(spr_cannonball, 0, _x, room_height-sprite_get_height(spr_brick)-16, 
		0.5, 0.5, 90, c_white, 0.5);
	_x += 16;
}