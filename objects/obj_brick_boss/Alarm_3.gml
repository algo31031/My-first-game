///@desc ship's taken
audio_play_sound(snd_explosion, 2, false);
path_end();
part_particles_create(obj_particles.part_sys,x,y,obj_particles.part_type_explode,1);
sprite_index = spr_shipPink;
image_index = 2;
image_speed = 0;
alarm[4] = 2*room_speed;