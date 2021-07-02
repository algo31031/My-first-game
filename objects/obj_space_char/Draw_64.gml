if(!global.gameover){
	var _m_index = missile_power - 1;
	var _l_index = laser_power - 1;
	
	var _x1 = 16+sprite_get_yoffset(spr_laser);
	var _x2 = 32+sprite_get_height(spr_laser)+sprite_get_yoffset(spr_spaceMissiles_040);
	var _shake = irandom_range(-1,1);
		
	switch(bullet){
		case bullets.laser:
			draw_sprite_ext(spr_laser, _l_index, _x1, room_height-72,1,1,-90,c_white,1);
			draw_sprite_ext(spr_spaceMissiles_040, _m_index, _x2, room_height-72,1,1,-90,c_white,0.25);
			draw_sprite(spr_number_2, 0, _x2+_shake, room_height-108-_shake);
				
			break;
		case bullets.missile:
			draw_sprite_ext(spr_spaceMissiles_040, _m_index, _x2, room_height-72,1,1,-90,c_white,1);			
			draw_sprite_ext(spr_laser, _l_index, _x1, room_height-72,1,1,-90,c_white,0.25);
			draw_sprite(spr_number_1, 0, _x1+_shake, room_height-108-_shake);
				
			break;
	}
}