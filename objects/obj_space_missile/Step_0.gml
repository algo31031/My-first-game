if(speed < max_spd) speed += 0.25;
part_particles_create(obj_particles.part_sys, x-sprite_height/2, y, obj_particles.part_type_missile_exhaust, 1);

if(target_locked and !instance_exists(target_locked)){
	target_locked = -1;
	direction = 0;
}

if(!target_locked){
	target_locked = instance_nearest(x, y, obj_enemy);
}

if(instance_exists(target_locked)){
	direction = point_direction(x,y,target_locked.x,target_locked.y);
}