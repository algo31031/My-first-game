// Inherit the parent event
event_inherited();

sprites = {
	attact: dog_attack_strip7,
	bark: dog_bark_strip6,
	die: dog_die_strip8,
	fall: dog_fall_strip5,
	hurt: dog_hurt_strip7,
	idle: dog_idle_blink_strip8,
	idle_blink: dog_idle_blink_strip8,
	jump: dog_jump_strip8,
	land: dog_land_strip3,
	run: dog_run_strip8,
	sit: dog_sit_strip8
};

if(!global.pets.dog) instance_deactivate_object(id);