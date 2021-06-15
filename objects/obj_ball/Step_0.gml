if(!is_flying){
	x = obj_paddle.x;
	y = obj_paddle.y - sprite_height/2 - obj_paddle.sprite_height/2 - 1;
	
	exit;
}

// To avoid the ball forever moving horizontally
if(direction == 0 or direction == 180){
	direction += 15;
}