enum brick_powers {
	extend = 0,
	weaken = 1,
	slow = 2,
	cannon = 3,
	clone = 4,
	pet = 5
}

function speed_up(){
	if(speed <= max_spd){
		speed += 0.5;
	}
}

function generate_brick_power(){
	if(instance_exists(obj_cannon)) exit;
	if(irandom_range(0, 5) > 0) exit;
		
	var _power = instance_create_layer(x, y, "Instances", obj_brick_power);
	_power.image_index = choose(brick_powers.extend, brick_powers.weaken,
		brick_powers.slow, brick_powers.cannon, brick_powers.clone, brick_powers.pet);
	//_power.image_index = brick_powers.weaken;
}