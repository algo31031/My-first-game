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

function generate_brick_power(){
	if(instance_exists(obj_cannon)) exit;
	if(global.brick_power_cd > 0) exit;
	if(irandom_range(0, 7) > 0) exit;
	
	global.brick_power_cd = 1*room_speed;
	var _power = instance_create_layer(x, y, "Powers", obj_brick_power);
	_power.image_index = choose(brick_powers.extend, brick_powers.weaken,
		brick_powers.slow, brick_powers.cannon, brick_powers.clone, brick_powers.UFO);
	//_power.image_index = brick_powers.UFO;
}

///@desc Used by obj_alien and brick level boss
function shoot_the_ball(){
	if(!instance_exists(obj_ball)) exit;
	audio_play_sound(snd_alien_shoot, 2, false);
	var _bullet = instance_create_layer(x, y, "Instances", obj_bullet);
	with(_bullet){
		direction = point_direction(x, y, obj_ball.x, obj_ball.y);
		image_angle = direction - 90;
	}
}

