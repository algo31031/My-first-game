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
		if(!global.space_boss and !instance_exists(obj_brick_4)){
			global.space_boss= true;
			instance_create_layer(room_width+128, room_height*0.25, "Powers", obj_brick_boss);
		}
		
		if(global.space_boss and global.space_level){
			instance_deactivate_object(obj_ball);
			instance_deactivate_object(obj_bullet);
		}
		
		break;
	case rm_jump_up:
	
	case rm_space:
}