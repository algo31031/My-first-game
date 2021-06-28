if(global.gameover){
	draw_set_halign(fa_center);	
	draw_text_transformed_color(global.cam_width/2, 150, "Game Over",4, 4, 0, c_red, c_red, c_red, c_red, 1);
	draw_set_halign(fa_left);
	draw_sprite_ext(spr_brick,0,160,308,1,1,0,c_white,1);
	draw_sprite_ext(spr_brick,1,160,358,1,1,0,c_white,1);
	draw_sprite_ext(spr_brick,2,160,408,1,1,0,c_white,1);
	draw_sprite_ext(spr_brick,3,160,458,1,1,0,c_white,1);
	draw_sprite_ext(spr_brick,4,160,508,1,1,0,c_white,1);
	draw_sprite_ext(spr_brick,-1,160,558,1,1,0,c_white,1);
	draw_text(200, 300, "X "+string(global.bricks_counter.red));
	draw_text(200, 350, "X "+string(global.bricks_counter.yellow));
	draw_text(200, 400, "X "+string(global.bricks_counter.green));
	draw_text(200, 450, "X "+string(global.bricks_counter.blue));
	draw_text(200, 500, "X "+string(global.bricks_counter.purple));
	draw_text(200, 550, "X "+string(global.bricks_counter.rainbow));
	draw_set_halign(fa_center);
	draw_text_transformed_color(global.cam_width/2, 600, ">> Enter << to Restart", 2, 2, 0, c_white, c_white, c_white, c_white, 1);	
	draw_text_transformed_color(global.cam_width/2, 650, ">> Space << To Continue", 2, 2, 0, c_white, c_white, c_white, c_white, 1);		
	draw_set_halign(fa_left);
}


switch(room){
	case rm_start:
		draw_set_halign(fa_center);	
		draw_text_transformed_color(room_width/2, 200, "Crouching Tiger",4, 4, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
		draw_text_transformed_color(room_width/2, 400, "Direction Key to control movement", 1, 1, 0, c_white, c_white, c_white, c_white, 1);	
		draw_text_transformed_color(room_width/2, 500, "Space Key To shoot", 1, 1, 0, c_white, c_white, c_white, c_white, 1);	
		draw_text_transformed_color(room_width/2, 600, ">> Press SPACE To Start <<", 2, 2, 0, c_white, c_white, c_white, c_white, 1);	
		draw_set_halign(fa_left);	
		
		break;
	
	case rm_space:
		draw_scores();
		
		var _bullet = bullets.laser;
		var _m_index = 0;
		var _l_index = 0;
		if(instance_exists(obj_space_char)){
			with(obj_space_char){
				_bullet = bullet;
				_m_index = missile_power - 1;
				_l_index = laser_power - 1;
			}
		}
		
		var _x1 = 16+sprite_get_yoffset(spr_laser);
		var _x2 = 32+sprite_get_height(spr_laser)+sprite_get_yoffset(spr_spaceMissiles_040);
		var _shake = irandom_range(-1,1);
		
		switch(_bullet){
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
		
	default:
		draw_scores();
		
		var _x = 24;
		if(lives <= 5){
			repeat(lives){
				draw_sprite_ext(spr_ball, 0, _x, 88, 0.75, 0.75, 0, c_white, 0.75);
				_x += 16;
			}
		} else {
			draw_sprite_ext(spr_ball, 0, _x, 88, 0.75, 0.75, 0, c_white, 0.75);
			draw_text(_x+16, 79.5, " X "+string(lives))
		}
	
}