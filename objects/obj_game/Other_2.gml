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
cheat_arr = [vk_up,vk_up,vk_down,vk_down,vk_left,vk_right,vk_left,vk_right,ord("B"),ord("A")];
input_arr = array_create(array_length(cheat_arr),noone);

draw_set_font(ft_UI_space);
randomize();
