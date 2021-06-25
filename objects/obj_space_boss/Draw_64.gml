if((global.cam_x + global.cam_width) >= room_width){	
	var _xx = 340;
	repeat(HP){
		draw_sprite_ext(spr_boss_HP, 0, _xx, 48, 0.5, 0.2, 0, c_white, 1);
		_xx += 100;
	}
}