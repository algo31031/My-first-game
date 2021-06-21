// Collision
if(bbox_left < 0 or (bbox_right > room_width and !global.space_level)){
	audio_play_sound(snd_hit_wall, 1, false);
	x = clamp(x, sprite_xoffset, room_width - sprite_xoffset);
	hspeed *= -1;
} 

if(bbox_bottom > room_height){
	instance_destroy();	
	
	if(!is_extra){		
		with(obj_paddle){
			image_xscale = 1;
			x = room_width/2; 
		}		
	}	
}

speed_up();

// Die or goto jump_up level
if(bbox_top <= 0){
	if(is_extra){
		instance_destroy();
	} else {
		global.jump_up_level = true;
		room_goto(rm_jump_up);
	}
} 

// Goto space level
if(bbox_right > room_width and global.space_level){
	room_goto(rm_space);
}