if(global.gameover or global.win){
	draw_set_halign(fa_center);
	if(global.gameover)
		draw_text_transformed_color(global.cam_width/2, 150, "Game Over",2, 2, 0, c_red, c_red, c_red, c_red, 1);
	else
		draw_text_transformed_color(global.cam_width/2, 150, "You Win",2, 2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
	draw_set_halign(fa_left);
	draw_sprite_ext(spr_brick,0,320,288,1,1,0,c_white,1);
	draw_sprite_ext(spr_brick,1,320,338,1,1,0,c_white,1);
	draw_sprite_ext(spr_brick,2,320,388,1,1,0,c_white,1);
	draw_sprite_ext(spr_brick,3,320,438,1,1,0,c_white,1);
	draw_sprite_ext(spr_brick,4,320,488,1,1,0,c_white,1);
	draw_sprite_ext(spr_brick,-1,320,538,1,1,0,c_white,1);
	draw_text_transformed(360, 280, "X "+string(global.bricks_counter.red), 0.5, 0.5, 0);
	draw_text_transformed(360, 330, "X "+string(global.bricks_counter.yellow), 0.5, 0.5, 0);
	draw_text_transformed(360, 380, "X "+string(global.bricks_counter.green), 0.5, 0.5, 0);
	draw_text_transformed(360, 430, "X "+string(global.bricks_counter.blue), 0.5, 0.5, 0);
	draw_text_transformed(360, 480, "X "+string(global.bricks_counter.purple), 0.5, 0.5, 0);
	draw_text_transformed(360, 530, "X "+string(global.bricks_counter.rainbow), 0.5, 0.5, 0);
	if(global.space_level) draw_sprite(spr_boss1, 0, 640, 310);
	if(global.platform_level) draw_sprite(spr_boss2, 0, 640, 410);
	if(global.final_level) draw_sprite(spr_boss3, 0, 640, 510);
	if(global.pets.cat) draw_sprite_ext(cat_idle_strip8, 0, 960, 300, -2, 2, 0, c_white, 1);
	if(global.pets.cat_bw) draw_sprite_ext(bwcat_idle_strip8, 0, 960, 400, -2, 2, 0, c_white, 1);
	if(global.pets.dog) draw_sprite_ext(dog_idle_strip8, 0, 960, 500, -2, 2, 0, c_white, 1);
	draw_set_halign(fa_center);
	draw_text_transformed_color(global.cam_width/2, 600, ">> Press Enter to Quit <<", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
	if(global.gameover)
		draw_text_transformed_color(global.cam_width/2, 650, ">> Press Space To Continue <<", 1, 1, 0, c_white, c_white, c_white, c_white, 1);		
	draw_set_halign(fa_left);
}


switch(room){
	case rm_start:
		draw_set_halign(fa_center);	
		draw_text_transformed_color(room_width/2, 200, "Crouching Tiger",2, 2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
		draw_text_transformed_color(room_width/2, 400, "Direction Key to control movement", 0.5, 0.5, 0, c_white, c_white, c_white, c_white, 1);	
		draw_text_transformed_color(room_width/2, 500, "Space Key To shoot", 0.5, 0.5, 0, c_white, c_white, c_white, c_white, 1);	
		draw_text_transformed_color(room_width/2, 600, ">> Press SPACE To Start <<", 1, 1, 0, c_white, c_white, c_white, c_white, 1);	
		draw_set_halign(fa_left);	
		
		break;
		
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
			draw_text_transformed(_x+16, 79.5, " X "+string(lives), 0.5, 0.5, 0)
		}
		
		if(global.coins){
			draw_set_halign(fa_right);
			draw_sprite_ext(spr_coin, 0, global.cam_width-24, 88, 0.5, 0.75, 0, c_white, 1);
			draw_text_transformed(global.cam_width-40, 79.5,string(global.coins),0.5,0.5,0);
			draw_set_halign(fa_left);
		}
	
}