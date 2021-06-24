///@desc ship's taken
audio_play_sound(snd_explosion, 2, false);
path_end();
part_particles_create(obj_particles.part_sys,x,y,obj_particles.part_type_explode,1);
part_particles_create(obj_particles.part_sys,x,y,obj_particles.part_type_explode_smoke,1);
repeat(3){
	part_particles_create(obj_particles.part_sys,x+random_range(-64,64),
						  y+random_range(-64,64),obj_particles.part_type_explode_small,1);
}					  
sprite_index = spr_shipPink;
image_index = 2;
image_speed = 0;
alarm[4] = 2*room_speed;