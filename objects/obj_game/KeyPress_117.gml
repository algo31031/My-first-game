switch(room){
	case rm_final:
		game_restart();
		break;
	default:
		room_goto_next();
		break;		
}