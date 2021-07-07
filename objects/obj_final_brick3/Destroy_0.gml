// Inherit the parent event
event_inherited();

global.bricks_counter.blue += 1;

if(irandom(9) == 0){
	var _coin = instance_create_layer(x,y,"Powers",obj_item_coin);
	with(_coin){
		image_index = 0;
		point = 1;
		value = 1;		
	}
}