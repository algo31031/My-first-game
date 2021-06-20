///@desc take damage
HP -= take_damage;
take_damage = 0;
if(HP > 0) {
	audio_play_sound(snd_hit_brick, 2, false);
}
else {
	audio_play_sound(snd_space_die1, 2, false);
	instance_destroy();
}