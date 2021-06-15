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
}