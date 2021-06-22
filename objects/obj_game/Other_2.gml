global.player_score = 0;
global.high_score = 100;
global.bricks_counter = 0;
global.gameover = false;

// level switch
global.brick_boss = false;
global.space_level = false;
global.space_boss = false;
global.platform_level = false;
global.jump_down_level = false;
global.final_level = false;

// global cooldown
global.brick_power_cd = 0;

lives = 10;

draw_set_font(ft_UI_space);
randomize();