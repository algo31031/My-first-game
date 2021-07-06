if(place_meeting(mouse_x,mouse_y,obj_item_coin)){
	var _coin = instance_nearest(mouse_x,mouse_y,obj_item_coin);
	if(_coin.speed > 0) exit;
	
	with(_coin){
		direction = point_direction(x,y,global.cam_x+global.cam_width-24,global.cam_y+88);
		speed = 15;
		global.player_score += point;
		global.coins += value;
	}
	audio_play_sound(snd_coin,2,0);
	coins_to_collect -= 1;
}