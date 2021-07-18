var _x = 24;
repeat(cannonball_count){
	draw_sprite_ext(spr_cannonball, 0, _x, global.cam_height-sprite_get_height(spr_brick)-16, 
		0.5, 0.5, 90, c_white, 0.5);
	_x += 16;
}

draw_sprite(transparentDark34,0,global.cam_width-220, global.cam_height-100);
draw_sprite(transparentDark24,0,150, global.cam_height-180);		
draw_sprite(transparentDark25,0,150, global.cam_height-20);	