global.player_score += point;
global.bricks_counter.total += 1;
if(global.bricks_counter.total and global.bricks_counter.total%50 == 0){
	audio_play_sound(snd_one_up, 2, 0);
	lives += 1;
}

if(irandom(3) == 0) instance_create_layer(x,y,"Powers",obj_brick_trash);

if(smiley){
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