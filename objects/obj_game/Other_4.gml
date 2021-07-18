switch(room){
	case rm_start:
		global.vkF11 = virtual_key_add(global.cam_width/2-54, global.cam_height-88, 108, 48, vk_f11);
		break;
	
	case rm_brick_init:
		audio_play_sound(bgm_brick, 1, true);
		global.vkLeft = virtual_key_add(40, global.cam_height-180, 80, 80, vk_left);
		global.vkSpace = virtual_key_add(global.cam_width-260, global.cam_height-180, 80, 80, vk_space);
		global.vkRight = virtual_key_add(global.cam_width-120, global.cam_height-180, 80, 80, vk_right);		
		global.vkUp = virtual_key_add(110, global.cam_height-260, 80, 80, vk_up);		
		global.vkDown = virtual_key_add(110, global.cam_height-100, 80, 80, vk_down);
		global.vkF11 = virtual_key_add(global.cam_width/2-120, global.cam_height-88, 108, 48, vk_f11);
		global.vkF12 = virtual_key_add(global.cam_width/2+12, global.cam_height-88, 108, 48, vk_f12);
		break;
		
	case rm_space:
		audio_play_sound(bgm_space, 1, true);
		global.vkLeft = virtual_key_add(40, global.cam_height-180, 80, 80, vk_left);
		global.vkRight = virtual_key_add(180, global.cam_height-180, 80, 80, vk_right);		
		global.vkUp = virtual_key_add(110, global.cam_height-260, 80, 80, vk_up);		
		global.vkDown = virtual_key_add(110, global.cam_height-100, 80, 80, vk_down);
		global.vkSpace = virtual_key_add(global.cam_width-260, global.cam_height-180, 80, 80, vk_space);
		global.vkEnter = virtual_key_add(global.cam_width-120, global.cam_height-180, 80, 80, vk_enter);
		global.vkF11 = virtual_key_add(global.cam_width/2-120, global.cam_height-88, 108, 48, vk_f11);
		global.vkF12 = virtual_key_add(global.cam_width/2+12, global.cam_height-88, 108, 48, vk_f12);		
		break;
		
	case rm_platform:
		audio_play_sound(bgm_platform, 1, true);
		global.vkLeft = virtual_key_add(40, global.cam_height-180, 80, 80, vk_left);
		global.vkRight = virtual_key_add(global.cam_width-120, global.cam_height-180, 80, 80, vk_right);		
		global.vkUp = virtual_key_add(110, global.cam_height-260, 80, 80, vk_up);		
		global.vkDown = virtual_key_add(110, global.cam_height-100, 80, 80, vk_down);
		global.vkSpace = virtual_key_add(global.cam_width-260, global.cam_height-180, 80, 80, vk_space);
		global.vkF11 = virtual_key_add(global.cam_width/2-120, global.cam_height-88, 108, 48, vk_f11);
		global.vkF12 = virtual_key_add(global.cam_width/2+12, global.cam_height-88, 108, 48, vk_f12);		
		break;
	case rm_final:
		audio_play_sound(bgm_final, 1, true);
		global.vkF11 = virtual_key_add(global.cam_width/2-120, global.cam_height-88, 108, 48, vk_f11);
		global.vkF12 = virtual_key_add(global.cam_width/2+12, global.cam_height-88, 108, 48, vk_f12);
		global.vkLeft = virtual_key_add(40, global.cam_height-180, 80, 80, vk_left);
		global.vkRight = virtual_key_add(180, global.cam_height-180, 80, 80, vk_right);	
		global.vkUp = virtual_key_add(110, global.cam_height-260, 80, 80, vk_up);		
		global.vkDown = virtual_key_add(110, global.cam_height-100, 80, 80, vk_down);		
		global.vkSpace = virtual_key_add(global.cam_width-260, global.cam_height-180, 80, 80, vk_space);
		global.vkEnter = virtual_key_add(global.cam_width-120, global.cam_height-180, 80, 80, vk_up);			
		break;
	case rm_pvz:
		audio_play_sound(bgm_pvz, 1, true);
		global.vkF11 = virtual_key_add(global.cam_width/2-120, global.cam_height-88, 108, 48, vk_f11);
		global.vkF12 = virtual_key_add(global.cam_width/2+12, global.cam_height-88, 108, 48, vk_f12);		
		global.vkLeft = virtual_key_add(40, global.cam_height-180, 80, 80, vk_left);
		global.vkRight = virtual_key_add(180, global.cam_height-180, 80, 80, vk_right);	
		global.vkUp = virtual_key_add(110, global.cam_height-260, 80, 80, vk_up);		
		global.vkDown = virtual_key_add(110, global.cam_height-100, 80, 80, vk_down);			
		global.vkSpace = virtual_key_add(global.cam_width-190, global.cam_height-260, 80, 80, vk_space);			
		global.vkEnter = virtual_key_add(global.cam_width-190, global.cam_height-100, 80, 80, vk_enter);			
		global.vkAlt = virtual_key_add(global.cam_width-260, global.cam_height-180, 80, 80, vk_alt);
		global.vkCtrl = virtual_key_add(global.cam_width-110, global.cam_height-180, 80, 80, vk_control);
		//virtual_key_show(global.vkSpace);
		//virtual_key_show(global.vkEnter);		
		break;
}