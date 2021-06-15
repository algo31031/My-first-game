move_bounce_all(true);
speed_up();
audio_play_sound(snd_hit_brick, 1, false);
with(other){
	HP -= 1;
	sprite_index = spr_brick;
}