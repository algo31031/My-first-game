audio_play_sound(snd_hit_brick, 2, false);
instance_destroy();
with(other){
	HP -= 1;
	sprite_index = spr_brick;
}