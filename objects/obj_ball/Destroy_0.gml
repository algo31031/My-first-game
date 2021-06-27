if(!is_extra){
	lives -= 1;
	audio_play_sound(snd_die, 1, false);		
	if(current_paddle){
		show_debug_message(current_paddle)
		show_debug_message(current_paddle.x)
		show_debug_message(current_paddle.y)
		show_debug_message(current_paddle.id)
		var _ball = instance_create_layer(current_paddle.x, current_paddle.y- sprite_height/2 - current_paddle.sprite_height/2 - 1, "Instances", obj_ball);
		_ball.current_paddle= current_paddle;
	} else { 
		instance_create_layer(xstart, ystart, "Instances", obj_ball);
	}
}