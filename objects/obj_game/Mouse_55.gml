var _i = 0;
repeat(72){
	var _t = instance_create_layer(mouse_x+lengthdir_x(100, _i),mouse_y+lengthdir_y(100,_i),"Instances",obj_test);
	_t.direction = point_direction(mouse_x+lengthdir_x(100, _i),mouse_y+lengthdir_y(100,_i),mouse_x,mouse_y);
	_i += 5;
}

