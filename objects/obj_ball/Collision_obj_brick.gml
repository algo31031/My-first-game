move_bounce_all(true);
speed_up();
audio_play_sound(snd_hit_brick, 1, false);
part_particles_create(obj_particles.part_sys,other.x,other.y,obj_particles.part_type_hit_char,1);
with(other){
	event_user(0);
}

if(is_extra){
	extra_ball_hits_left -= 1;
	if(extra_ball_hits_left <= 0) instance_destroy();
}
if(is_UFO and sprite_index != cat_attack_strip7){
	 sprite_index = cat_attack_strip7;
}