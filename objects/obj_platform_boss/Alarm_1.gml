///@desc creating bricks
var _xx = 160;
var _yy = 64;
repeat(7){
	var _brick = instance_create_layer(_xx, _yy, "Powers", obj_brick_1);
	with(_brick){
		direction = 270;
		speed = 2;
	}
	_xx += 160;
}
alarm[1] = 5*room_speed;