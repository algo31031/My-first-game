// Inherit the parent event
event_inherited();
// deactive all other bricks
if(HP <= 0){
	for (var i = 0; i < instance_number(obj_space_brick); ++i;){
		var _brick = instance_find(obj_space_brick,i);
		part_particles_create(obj_particles.part_sys, _brick.x, _brick.y, obj_particles.part_type_hit_char, 1);
		instance_deactivate_object(_brick);
	}
	instance_deactivate_object(obj_space_bullet);
}

if(global.space_boss and invincible) invincible--;

if(cooldown) cooldown--;

if(speed > 0) speed += 0.1;