if(faction == other.faction) exit;

part_particles_create(obj_particles.part_sys, x+lengthdir_x(sprite_yoffset,direction), y+lengthdir_y(sprite_xoffset,direction), obj_particles.part_type_hit_char, 1);
instance_destroy();

other.take_damage += bullet_damage;

with(other){
	event_user(0); // faction take damage event
}
