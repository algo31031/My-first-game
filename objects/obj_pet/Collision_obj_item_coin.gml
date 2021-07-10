if(sprite_index != sprites.attact){
	sprite_index = sprites.attact;
	image_xscale = direction == 0 ? 2 : -2;
}

if(other.speed != 0) exit;

with(other){
	direction = point_direction(x,y,global.cam_x+global.cam_width-24,global.cam_y+88);
	speed = 21;
	if(!audio_is_playing(snd_coin)) audio_play_sound(snd_coin,1,0);	
}