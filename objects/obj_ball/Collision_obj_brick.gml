move_bounce_all(true);
speed_up();
audio_play_sound(snd_hit_brick, 1, false);
part_particles_create(obj_particles.part_sys,other.x,other.y,obj_particles.part_type_hit_char,1);
with(other){
	HP -= 1;
	//sprite_index = spr_brick;
	if(y < (global.cam_y+global.cam_height-sprite_height)) generate_brick_power();
}

if(is_extra){
	extra_ball_hits_left -= 1;
	if(extra_ball_hits_left <= 0) instance_destroy();
}