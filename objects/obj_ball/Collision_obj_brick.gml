move_bounce_all(true);
speed_up();
audio_play_sound(snd_hit_brick, 1, false);
with(other){
	HP -= 1;
	sprite_index = spr_brick;
	generate_brick_power();
}

if(is_extra){
	extra_ball_hits_left -= 1;
	if(extra_ball_hits_left <= 0) instance_destroy();
}