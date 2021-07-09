///@desc teleport
alarm[0] = 1.5*room_speed;
layer = layer_get_id("Powers");
move_random(32,32);
part_particles_create(obj_particles.part_sys, x,y,obj_particles.part_type_portal,1);
audio_play_sound(snd_portal, 1, 0);

