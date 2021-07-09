direction = 270;
speed = 3;
image_speed = 0;
image_index = choose(brick_powers.extend, brick_powers.weaken,
		brick_powers.slow, brick_powers.cannon, brick_powers.clone, brick_powers.UFO);

//image_index = irandom(image_number - 1);
//if(image_index == brick_powers.cannon){
//	image_index = brick_powers.weaken;
//}
//image_index = brick_powers.weaken;
