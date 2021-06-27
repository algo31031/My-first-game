//// Collision
//if(bbox_left < 0 or (bbox_right > room_width and !global.space_level)){
//	audio_play_sound(snd_hit_wall, 1, false);
//	x = clamp(x, sprite_xoffset, room_width - sprite_xoffset);
//	hspeed *= -1;
//} 

//if(bbox_bottom > room_height){
//	instance_destroy();	
	
//	if(!is_extra){		
//		with(obj_paddle){
//			image_xscale = 1;
//			x = room_width/2; 
//		}		
//	}	
//}

//if(bbox_top <= 0){
//	if(is_extra){
//		instance_destroy();
//	} else {
//		audio_play_sound(snd_hit_wall, 1, false);
//		y = clamp(y, sprite_yoffset, room_height - sprite_yoffset);				
//		vspeed *= -1;
//	}
//}

//speed_up();

// Goto space level
switch(room){
	case rm_brick_init:
		if(bbox_right > room_width and global.space_level){
			room_goto(rm_space);
		}
		break;
}