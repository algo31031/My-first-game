switch(room){
	case rm_start:
		draw_set_halign(fa_center);	
		draw_text_transformed_color(room_width/2, 200, "GAME Start",4, 4, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
		draw_text_transformed_color(room_width/2, 400,  "Left and Right to control the paddle", 1, 1, 0, c_white, c_white, c_white, c_white, 1);	
		draw_text_transformed_color(room_width/2, 500,  "Space To Fire the Ball", 1, 1, 0, c_white, c_white, c_white, c_white, 1);	
		draw_text_transformed_color(room_width/2, 600,  ">> Press SPACE To Start <<", 2, 2, 0, c_white, c_white, c_white, c_white, 1);	
		draw_set_halign(fa_left);	
		
		break;
	
	case rm_brick_init:
		draw_scores();
		
		var _x = 24;
		repeat(lives){
			draw_sprite_ext(spr_ball, 0, _x, 88, 0.75, 0.75, 0, c_white, 0.75);
			_x += 16;
		}		
		
		break;
		
	case rm_space:
		draw_scores();
		
		var _bullet = bullets.laser;
		var _index = 0;
		if(instance_exists(obj_space_char)){
			with(obj_space_char){
				_bullet = bullet;
				_index = bullet_damage - 1;
			}
		}
		
		var _x1 = 16+sprite_get_yoffset(spr_laser);
		var _x2 = 32+sprite_get_height(spr_laser)+sprite_get_yoffset(spr_spaceMissiles_040);
		
		switch(_bullet){
			case bullets.laser:
				draw_sprite_ext(spr_laser, _index, _x1, 88,1,1,-90,c_white,1);
				draw_sprite_ext(spr_spaceMissiles_040, _index, _x2, 88,1,1,-90,c_white,0.25);
				draw_sprite(spr_number_2, 0, _x2, 120);
				
				break;
			case bullets.missile:
				draw_sprite_ext(spr_laser, _index, _x1, 88,1,1,-90,c_white,0.25);
				draw_sprite_ext(spr_spaceMissiles_040, _index, _x2, 88,1,1,-90,c_white,1);
				draw_sprite(spr_number_1, 0, _x1, 120);
				
				break;
		}

		
		break;
		
	default:
		draw_scores();
	
}