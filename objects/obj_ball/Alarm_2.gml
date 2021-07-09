///@desc explode
audio_play_sound(snd_explosion_small,1,0);
part_particles_create(obj_particles.part_sys,x,y,obj_particles.part_type_explode_small,1);
instance_destroy();