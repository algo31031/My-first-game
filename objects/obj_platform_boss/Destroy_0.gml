global.player_score += 500;
for (var i = 0; i < instance_number(obj_space_brick); ++i;){
	var _brick = instance_find(obj_space_brick,i);
	part_particles_create(obj_particles.part_sys, _brick.x, _brick.y, obj_particles.part_type_hit_char, 1);
	instance_deactivate_object(_brick);
}
