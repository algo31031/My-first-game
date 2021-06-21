///@desc take damage
part_particles_create(obj_particles.part_sys, other.x+sprite_xoffset, other.y, obj_particles.part_type_hit_char, 1);

HP -= take_damage;
take_damage = 0;
if(HP > 0) {
	audio_play_sound(snd_hit_brick, 2, false);
}
else {
	audio_play_sound(snd_space_die1, 2, false);
	instance_destroy();
}