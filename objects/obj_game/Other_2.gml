global.player_score = 0;
global.high_score = 100;
global.bricks_counter = 0;
global.gameover = false;

// level switch
global.space_level = false;
global.space_boss = false;
global.jump_up_level = false;
global.jump_down_level = false;
global.final_level = false;

// global cooldown
global.brick_power_cd = 0;

lives = 5;

draw_set_font(ft_UI_space);
randomize();