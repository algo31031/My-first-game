// Inherit the parent event
event_inherited();

image_speed = 0;
direction = 180;

// factions.ally
shield = 3;
max_shield = 3;
shield_restroe = 0;
HP = 1;
max_HP = 1;
gunslinger = 0;

// movement
spd = 3;
jspd = 10;
grav = 1;
hspd = 0;
vspd = 0;
max_spd = 3;
air_jump = 1;

spawn_x = x;
spawn_y = y;

part_particles_create(obj_particles.part_sys, x,y,obj_particles.part_type_portal,1);
audio_play_sound(snd_portal, 1, 0);