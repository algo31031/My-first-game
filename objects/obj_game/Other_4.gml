switch(room){
	case rm_brick_init:
		audio_play_sound(bgm_brick, 1, true);
		break;
		
	case rm_space:
		audio_play_sound(bgm_space, 1, true);
		break;
		
	case rm_platform:
		audio_play_sound(bgm_platform, 1, true);
		break;
}