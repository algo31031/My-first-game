///@desc space level boss fight red brick
var _y = 64;
repeat(10){
	var _brick = instance_create_layer(room_width-384, _y, "Instances", obj_space_brick0);
	_brick.speed = 1;
	_y += 64;
}

_y = 128;
repeat(6){
	var _brick = instance_create_layer(room_width-256, _y, "Instances", obj_space_brick3);
	_brick.speed = 1;
	_y += 128;
}

_y = 168;
repeat(4){
	var _brick = instance_create_layer(room_width-128, _y, "Instances", obj_space_brick1);
	_brick.speed = 1;
	_y += 96;
}

alarm[2] = 15*room_speed;