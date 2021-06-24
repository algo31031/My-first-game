part_particles_create(obj_particles.part_sys,other.x,other.y,obj_particles.part_type_hit_char,1);
instance_destroy();
audio_play_sound(snd_hit_brick, 1, false);
other.HP -= 1;