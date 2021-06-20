if(!is_flying){
	x = obj_paddle.x;
	y = obj_paddle.y - sprite_height/2 - obj_paddle.sprite_height/2 - 1;
	
	exit;
}

if(is_UFO){
	speed = 0;
	if(keyboard_check(vk_left)) x -= 0.75;
	if(keyboard_check(vk_right)) x += 0.75;
	if(keyboard_check(vk_up)) y -= 0.75;
	if(keyboard_check(vk_down)) y += 0.75;
	
	x = clamp(x, sprite_xoffset, room_width-sprite_xoffset);
	y = clamp(y, sprite_yoffset, room_height-sprite_yoffset);
	
	part_particles_create(obj_particles.part_sys,x,y,obj_particles.part_type_spark,1);
	
	exit;
}

// To avoid the ball forever moving horizontally
if(direction == 0 or direction == 180){
	direction += 15;
}