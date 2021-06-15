// Collision
if(bbox_left < 0 or bbox_right > room_width){
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
	
	if(lives <= 0) global.gameover = true;
}

speed_up();

// Goto jump_up level
if(bbox_top <= 0){
	room_goto(rm_jump_up);
} 