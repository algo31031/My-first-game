global.player_score = 0;
global.high_score = 100;
global.coins = 500;
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
}
global.gameover = false;
global.win = false;

// level switch
global.brick_boss = false;
global.space_level = false;
global.space_boss = false;
global.platform_level = false;
global.platform_boss = false;
global.final_level = false;
global.final_boss = false;

// brick cooldown
global.brick_power_cd = 0;

lives = 5;

draw_set_font(ft_UI_space);
randomize();