if(global.player_score > global.high_score) global.high_score = global.player_score;	
if(global.brick_power_cd > 0) global.brick_power_cd -= 1;

if(global.gameover){
	global.player_score = 0;
	global.h_move = 0;
	global.v_move = 0;
	
	if(keyboard_check_pressed(vk_space)){
		lives = 5;
		global.gameover = false;
		instance_activate_region(global.cam_x, global.cam_y, global.cam_x+global.cam_width, global.cam_y+global.cam_height,1);
		switch(room){
			case rm_brick_init:
				audio_play_sound(bgm_brick, 1, true);
				break;	
			case rm_space:
				global.h_move = 2;
				audio_play_sound(bgm_space, 1, true);
				break;		
			case rm_platform:
				audio_play_sound(bgm_platform, 1, true);
				break;					
			case rm_final:
				audio_play_sound(bgm_final, 1, true);
				break;	
			case rm_pvz:
				audio_play_sound(bgm_pvz,1,true);
				break;
		}
	}
	
	if(keyboard_check_pressed(vk_f5)){
		lives = 99;
		global.gameover = false;
		global.cheat_mode = true;
		room_restart();
	}
	
	if(keyboard_check_pressed(vk_enter)){
		game_restart();
	}
	
	exit;
}

if(global.win){
	instance_deactivate_region(global.cam_x, global.cam_y, global.cam_x+global.cam_width, global.cam_y+global.cam_height,1,1);
	audio_stop_all();	
		if(keyboard_check_pressed(vk_space)){
			game_restart();
		}
	exit;
}

if(lives <= 0 and !global.gameover){
	lives = 0;
	global.gameover = true;
	global.h_move = 0;
	audio_stop_all();
	audio_play_sound(bgm_gameover, 5, 0);	
	instance_deactivate_region(global.cam_x, global.cam_y, global.cam_x+global.cam_width, global.cam_y+global.cam_height,1,1);
	exit;
}

switch(room){				
	case rm_start:	
		if(keyboard_check_pressed(vk_space)){
			room_goto(rm_brick_init);
			//room_goto(rm_space);
		}
		
		break;
		
	case rm_brick_init:
	
		if(!global.brick_boss and !instance_exists(obj_brick_4)){
			global.brick_boss= true;
			instance_create_layer(room_width+128, room_height*0.25, "Powers", obj_brick_boss);
		}
		
		if(global.brick_boss and global.space_level){
			instance_deactivate_object(obj_ball);
			instance_deactivate_object(obj_bullet);
		}
		
		break;

	case rm_space:
		if(!global.space_boss and (global.cam_x+global.cam_width) >= room_width){
			global.space_boss = true;
			obj_space_boss.alarm[0] = 10*room_speed;
		}
		
		if(global.space_boss and obj_space_boss.HP <= 0){
			audio_stop_sound(bgm_space);
		}
		
		break;
		
	case rm_platform:
		if(!global.platform_boss and global.cam_y <= 0){
			global.platform_boss = true;
			with(obj_platform_boss){
				path_start(path_platform_boss, 3, path_action_restart, false);
				alarm[0] = 3*room_speed;
				alarm[1] = 5*room_speed;
				alarm[2] = 10*room_speed;
			}
		}
		
		if(global.final_level){
			instance_deactivate_object(obj_brick);
			part_particles_create(obj_particles.part_sys, global.cam_x+80,global.cam_y+650,obj_particles.part_type_portal,1);
		}
		
		break;		
}