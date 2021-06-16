audio_play_sound(snd_explosion, 2, false);
instance_destroy(other);
global.player_score += 500;
part_particles_create(obj_particles.part_sys,x,y,obj_particles.part_type_explode,1);
