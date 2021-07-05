switch(room){
	case rm_pvz:
		game_restart();
		break;
	default:
		room_goto_next();
		break;		
}