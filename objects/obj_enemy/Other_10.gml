///@desc take damage
part_particles_create(obj_particles.part_sys, other.x+sprite_xoffset, other.y, obj_particles.part_type_hit_char, 1);

if(invincible){
	take_damage = 0;
	exit;
}

HP -= take_damage;
take_damage = 0;
