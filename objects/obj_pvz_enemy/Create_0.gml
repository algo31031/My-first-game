// Inherit the parent event
event_inherited();

direction = 180;

max_HP = 1;

part_particles_create(obj_particles.part_sys, x,y,obj_particles.part_type_portal,1);
if(!audio_is_playing(snd_portal)) audio_play_sound(snd_portal,1,0);