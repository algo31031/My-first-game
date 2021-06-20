///@desc set moveable
path_end();

moveable = true;
speed = 2;
direction = 0;

with(obj_camera){
	if(!global.h_move) global.h_move = 2;
}