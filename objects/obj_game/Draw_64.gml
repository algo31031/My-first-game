if(global.gameover or global.win){
	draw_set_halign(fa_center);
	draw_set_font(ft_UI_Chs);
	if(global.gameover){
		if(end_txt == -1) end_txt = choose("你被砖块打败了","我觉得我还能再抢救一下","大侠请重新来过","从前,有一个球球...","有请下一位");
		draw_text_transformed_color(global.cam_width/2, 150, end_txt,2, 2, 0, c_red, c_red, c_red, c_red, 1);
	} else {
		draw_text_transformed_color(global.cam_width/2, 150, "咕.咕.咕...",2, 2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
	}
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
	if(global.failed_counter > 3){
		draw_text_transformed_color(global.cam_width/2, 550, "F5开启作弊模式", 0.35, 0.35, 0, c_white, c_white, c_white, c_white, 1);
	}
	if(global.win)
		draw_text_transformed_color(global.cam_width/2, 600, ">> 按空格键(Space)重新开始 <<", 1, 1, 0, c_orange, c_orange, c_orange, c_orange, 1);
	if(global.gameover){
		draw_text_transformed_color(global.cam_width/2, 600, ">> 按空格键(Space)继续游戏 <<", 1, 1, 0, c_orange, c_orange, c_orange, c_orange, 1);
		draw_text_transformed_color(global.cam_width/2, 650, ">> 按回车键(Enter)回主菜单 <<", 1, 1, 0, c_white, c_white, c_white, c_white, 1);		
	}
	draw_set_halign(fa_left);
	draw_set_font(ft_UI_space);
}


switch(room){
	case rm_start:
		draw_set_halign(fa_center);	
		draw_set_font(ft_UI_Chs);
		draw_text_transformed_color(room_width/2, 150, "平淡无奇的打砖块游戏",2, 2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
		draw_text_transformed_color(room_width/2, 400, "方向键(↑↓←→/WSAD)控制玩家移动", 0.5, 0.5, 0, c_orange, c_orange, c_orange, c_orange, 1);	
		draw_text_transformed_color(room_width/2, 448, "空格键(Space)射击以及发射弹球", 0.5, 0.5, 0, c_orange, c_orange, c_orange, c_orange, 1);	
		draw_text_transformed_color(room_width/2, 496, "数字键(1、2)切换武器", 0.5, 0.5, 0, c_orange, c_orange, c_orange, c_orange, 1);	
		draw_text_transformed_color(room_width/2, 550, ">> 请按空格键(Space)开始游戏 <<", 1, 1, 0, c_white, c_white, c_white, c_white, 1);	
		draw_set_halign(fa_left);
		draw_set_font(ft_UI_space);
		
		break;

	default:
		if(global.cheat_mode){
			draw_set_font(ft_UI_Chs);
			draw_set_halign(fa_center);
			draw_text_transformed(global.cam_width/2, 16, "作弊模式", 0.5, 0.5, 0);
			draw_set_font(ft_UI_space);
			draw_set_halign(fa_left);			
		}
		draw_set_halign(fa_right);
		draw_text_transformed(global.cam_width-16, 16, "Score: " + string(global.player_score), 0.5, 0.5, 0);
		draw_set_halign(fa_left);
		
		var _x = 48;
		if(lives <= 5){
			repeat(lives){
				draw_sprite_ext(hud_heartFull, 0, _x, 48, 1, 1, 0, c_white, 1);
				_x += 24;
			}
		} else {
			draw_sprite_ext(hud_heartFull, 0, _x, 48, 1, 1, 0, c_white, 1);
			draw_sprite_ext(hud_x, 0, _x+48, 48, 1, 1, 0, c_white, 1);
			draw_text_transformed(_x+74, 28, string(lives), 1,1, 0)
		}
		
		draw_set_halign(fa_right);
		draw_sprite_ext(spr_coin, 0, global.cam_width-24, 56, 0.5, 0.75, 0, c_white, 1);
		draw_text_transformed(global.cam_width-40, 47.5,string(global.coins),0.5,0.5,0);
		draw_set_halign(fa_left);
	
}