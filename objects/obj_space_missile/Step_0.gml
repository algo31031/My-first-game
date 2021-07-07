event_inherited();

if(speed < max_spd) speed += 0.25;
part_particles_create(obj_particles.part_sys, x-sprite_height/2, y, obj_particles.part_type_missile_exhaust, 1);
