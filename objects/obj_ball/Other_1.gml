 if(bbox_left < 0 or bbox_right > room_width){
	audio_play_sound(snd_hit_wall, 1, false);
	x = clamp(x, sprite_xoffset, room_width - sprite_xoffset);
	hspeed *= -1;
} 

if(bbox_top <= 0){
	audio_play_sound(snd_hit_wall, 1, false);
	y = clamp(y, sprite_yoffset, room_height - sprite_yoffset);
	vspeed *= -1;
} 

if(bbox_bottom > room_height){
	instance_destroy();	
	
	if(!is_extra){
		lives -= 1;
		audio_play_sound(snd_die, 1, false);
		
		with(obj_paddle){
			image_xscale = 1;
			x = room_width/2; 
		}
		
		instance_create_layer(xstart, ystart, "Instances", obj_ball);		
	}	
	
	if(lives <= 0) global.gameover = true;
}

speed_up();