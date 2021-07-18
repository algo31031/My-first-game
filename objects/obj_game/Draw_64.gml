if(global.gameover or global.win){
	draw_set_halign(fa_center);
	draw_set_font(ft_UI_Chs);
	if(global.gameover){
		if(end_txt == -1) end_txt = choose("你被砖块打败了","我觉得我还能再抢救一下","大侠请重新来过","从前,有一个球球...","有请下一位");
		draw_text_transformed_color(global.cam_width/2, 150, end_txt,2, 2, 0, c_red, c_red, c_red, c_red, 1);
	} else {
		draw_text_transformed_color(global.cam_width/2, 150, "未完待续...",2, 2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
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
		draw_text_transformed_color(global.cam_width/2, 550, "上上下下左右左右BA", 0.35, 0.35, 0, c_white, c_white, c_white, c_white, 1);
		draw_sprite(transparentDark40,0,global.cam_width/2-66, global.cam_height-40);
	}
	if(global.win)
		draw_text_transformed_color(global.cam_width/2+66, 580, "回主菜单", 0.7, 0.7, 0, c_white, c_white, c_white, c_white, 1);
		draw_sprite(transparentDark41,0,global.cam_width/2+66, global.cam_height-40);
	if(global.gameover){
		draw_text_transformed_color(global.cam_width/2-66, 580, "继续游戏", 0.75, 0.75, 0, c_orange, c_orange, c_orange, c_orange, 1);
		draw_text_transformed_color(global.cam_width/2+66, 580, "回主菜单", 0.75, 0.75, 0, c_white, c_white, c_white, c_white, 1);
		draw_sprite(transparentDark40,0,global.cam_width/2-66, global.cam_height-40);
		draw_sprite(transparentDark41,0,global.cam_width/2+66, global.cam_height-40);
	}
	draw_set_halign(fa_left);
	draw_set_font(ft_UI_space);
}


switch(room){
	case rm_start:
		draw_set_halign(fa_center);	
		draw_set_font(ft_UI_Chs);
		draw_text_transformed_color(room_width/2, 150, "平淡无奇的打砖块游戏",2, 2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
		draw_text_transformed_color(room_width/2, 300, "方向键(↑↓←→)控制玩家移动", 1, 1, 0, c_orange, c_orange, c_orange, c_orange, 1);	
		draw_text_transformed_color(room_width/2, 350, "A键射击以及发射弹球", 1, 1, 0, c_orange, c_orange, c_orange, c_orange, 1);	
		draw_text_transformed_color(room_width/2, 400, "B键切换武器", 1, 1, 0, c_orange, c_orange, c_orange, c_orange, 1);	
		draw_text_transformed_color(room_width/2, 550, ">> 请按START键开始游戏 <<", 1, 1, 0, c_white, c_white, c_white, c_white, 1);	
		draw_sprite(transparentDark40,0,global.cam_width/2, global.cam_height-40);
		draw_set_halign(fa_left);
		draw_set_font(ft_UI_space);
		
		break;
	case rm_final:
		draw_default_UI();
		draw_sprite(transparentDark22,0,80, global.cam_height-100);		
		draw_sprite(transparentDark23,0,220, global.cam_height-100);
		draw_sprite(transparentDark35,0,global.cam_width-80, global.cam_height-100);		
		draw_sprite(transparentDark34,0,global.cam_width-220, global.cam_height-100);
		
		break;
	case rm_pvz:
		draw_default_UI();	
		draw_sprite(transparentDark36,0,global.cam_width-150, global.cam_height-180);		
		draw_sprite(transparentDark37,0,global.cam_width-150, global.cam_height-20);		
	case rm_space:
		draw_sprite(transparentDark22,0,80, global.cam_height-100);		
		draw_sprite(transparentDark23,0,220, global.cam_height-100);	
		draw_sprite(transparentDark24,0,150, global.cam_height-180);		
		draw_sprite(transparentDark25,0,150, global.cam_height-20);		
		draw_sprite(transparentDark35,0,global.cam_width-80, global.cam_height-100);		
		draw_sprite(transparentDark34,0,global.cam_width-220, global.cam_height-100);
		
		break;
	case rm_brick_init:
	case rm_platform:
		draw_sprite(transparentDark22,0,80, global.cam_height-100);		
		draw_sprite(transparentDark23,0,global.cam_width-80, global.cam_height-100);

		
	default:
		draw_default_UI();	
}