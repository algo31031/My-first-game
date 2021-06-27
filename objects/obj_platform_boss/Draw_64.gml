if(global.platform_boss){	
	var _xx = room_width/2 - 300;
	repeat(HP){
		draw_sprite_ext(spr_boss_HP, 0, _xx, 48, 1, 0.2, 0, c_white, 1);
		_xx += 200;
	}
}