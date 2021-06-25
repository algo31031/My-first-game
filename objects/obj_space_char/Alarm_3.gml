///@desc crushed in platform level
audio_play_sound(snd_explosion, 2, false);
path_end();
part_particles_create(obj_particles.part_sys,x,y,obj_particles.part_type_explode,1);
part_particles_create(obj_particles.part_sys,x,y,obj_particles.part_type_explode_smoke,1);
repeat(3){
	part_particles_create(obj_particles.part_sys,x+random_range(-64,64),
						  y+random_range(-64,64),obj_particles.part_type_explode_small,1);
}
global.cam_shake = 3;

instance_destroy();

var _char = instance_create_layer(x, y-26, "Instances", obj_platform_char);
with(_char){
	direction = 270;
	speed = 2;
}
