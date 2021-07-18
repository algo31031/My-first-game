global.player_score = 0;
global.high_score = 100;
global.coins = 0;
global.bricks_counter = {
	total: 0,
	red: 0,
	yellow: 0,
	green: 0,
	blue: 0,
	purple: 0,
	rainbow: 0
};
global.pets = {
	cat: -2,
	cat_bw: 0,
	dog: 0
};
global.gameover = false;
global.win = false;
global.failed_counter = 0;

// level switch
global.brick_boss = false;
global.space_level = false;
global.space_boss = false;
global.platform_level = false;
global.platform_boss = false;
global.final_level = false;
global.final_boss = false;
global.pvz_boss = false;
global.matching_level = false;

// brick cooldown
global.brick_power_cd = 0;

lives = global.cheat_mode ? 99 : 5;

end_txt = -1;

// virtual keys for mobile phones
global.vkLeft = noone;
global.vkRight = noone;
global.vkUp = noone;
global.vkDown = noone;
global.vkSpace = noone;
global.vkEnter = noone;
global.vkAlt = noone;
global.vkCtrl = noone;
global.vkF11 = noone;
global.vkF12 = noone;

function draw_default_UI(){
	if(global.cheat_mode){
		draw_set_font(ft_UI_Chs);
		draw_set_halign(fa_center);
		draw_text_transformed(global.cam_width/2, 32, "作弊模式", 0.75, 0.75, 0);
		draw_set_font(ft_UI_space);
		draw_set_halign(fa_left);			
	}
	draw_set_halign(fa_right);
	draw_text_transformed(global.cam_width-32, 32, "Score: " + string(global.player_score), 1, 1, 0);
	draw_set_halign(fa_left);
		
	var _x = 48;
	if(lives <= 5){
		repeat(lives){
			draw_sprite_ext(hud_heartFull, 0, _x, 64, 1, 1, 0, c_white, 1);
			_x += 24;
		}
	} else {
		draw_sprite_ext(hud_heartFull, 0, _x, 64, 1, 1, 0, c_white, 1);
		draw_sprite_ext(hud_x, 0, _x+48, 64, 1, 1, 0, c_white, 1);
		draw_text_transformed(_x+74, 44, string(lives), 1,1, 0)
	}
		
	draw_set_halign(fa_right);
	draw_sprite_ext(spr_coin, 0, global.cam_width-48, 94, 1, 1, 0, c_white, 1);
	draw_text_transformed(global.cam_width-80, 76,string(global.coins),1,1,0);
	draw_set_halign(fa_left);
}


draw_set_font(ft_UI_space);
randomize();
