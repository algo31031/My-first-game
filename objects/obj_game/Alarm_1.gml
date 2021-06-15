/// @desc restore bricks' HP 

for (var i = 0; i < instance_number(obj_brick); ++i;) {
	var _brick = instance_find(obj_brick,i);
	with(_brick){
		if(temp_HP == 0){
			continue;
		}
		HP = temp_HP;
		temp_HP = 0;
	}
}