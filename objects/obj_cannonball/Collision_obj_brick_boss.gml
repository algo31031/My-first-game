audio_play_sound(snd_hit_brick, 2, false);
part_particles_create(obj_particles.part_sys,x,y,obj_particles.part_type_hit_char,1);
instance_destroy();
with(other){
	HP -= 1;
}