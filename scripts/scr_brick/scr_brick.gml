enum brick_powers {
	extend = 0,
	weaken = 1,
	slow = 2,
	cannon = 3,
	clone = 4,
	UFO = 5
}

function speed_up(){
	if(speed <= max_spd){
		speed += 0.5;
	}
}


///@desc Used by obj_alien and brick level boss
function shoot_the_ball(){
	if(!instance_exists(obj_ball)) exit;
	audio_play_sound(snd_alien_shoot, 2, false);
	var _bullet = instance_create_layer(x, y, "Powers", obj_bullet);
	with(_bullet){
		direction = point_direction(x, y, obj_ball.x, obj_ball.y);
		image_angle = direction - 90;
	}
}

function generate_coin(){
	audio_play_sound(snd_coin,1,0);
	var _coin = instance_create_layer(x,y,"Powers",obj_item_coin);
	with(_coin){
		image_index = 0;
		direction = point_direction(x,y,global.cam_x+global.cam_width-24,global.cam_y+88);
		speed = 15;
		point = 1;
		value = 1;
	}	
}
