// Inherit the parent event
event_inherited();

global.bricks_counter.blue += 1;

if(irandom(4) == 0){
	audio_play_sound(snd_coin,1,0);
	var _coin = instance_create_layer(x,y,"Powers",obj_item_coin);
	with(_coin){
		image_index = 0;
		direction = point_direction(x,y,global.cam_x+global.cam_width-24,global.cam_y+88);
		speed = 15;
		point = 1;
		value = 1;
	}
}