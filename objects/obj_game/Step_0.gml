if(global.player_score > global.high_score) global.high_score = global.player_score;	
if(global.brick_power_cd > 0) global.brick_power_cd -= 1;

if(lives <= 0){
	lives = 5;
	room_restart();	
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
			if(!global.platform_level) audio_play_sound(snd_space_level, 1, false);
			global.platform_level = true;
		}
		
		break;
		
	case rm_platform:
		if(!global.platform_boss and global.cam_y <= 0){
			global.platform_boss = true;
			with(obj_platform_boss){
				path_start(path_platform_boss, 5, path_action_restart, false);
				alarm[0] = 2*room_speed;
				alarm[1] = 5*room_speed;
				alarm[2] = 10*room_speed;
			}
		}
		
		break;		
}