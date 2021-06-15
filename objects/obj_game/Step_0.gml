if(global.player_score > global.high_score){
	global.high_score = global.player_score;
}	

switch(room){				
	case rm_start:	
		if(keyboard_check_pressed(vk_space)){
			room_goto(rm_brick_init);
		}
		
		break;
}