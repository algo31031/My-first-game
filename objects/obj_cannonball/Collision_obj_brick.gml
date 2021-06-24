audio_play_sound(snd_hit_brick, 2, false);
instance_destroy();
part_particles_create(obj_particles.part_sys,other.x,other.y,obj_particles.part_type_hit_char,1);
with(other){
	HP -= 1;
	sprite_index = spr_brick;
}