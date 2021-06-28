part_particles_create(obj_particles.part_sys, x+lengthdir_x(sprite_xoffset,direction), 
	y+lengthdir_y(sprite_yoffset, direction), obj_particles.part_type_hit_char, 1);

direction = point_direction(other.x, other.y, x, y);

with(other){
	event_user(0);
}