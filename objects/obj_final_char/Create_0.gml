// Inherit the parent event
event_inherited();

image_speed = 0;
direction = 180;

// factions.ally
shield = 1;
max_shield = 1;
shield_restroe = 0;
HP = 1;
max_HP = 1;
gunslinger = 0;

// movement
spd = 4;
jspd = 4;
grav = 1;
fric = 0.5;
hspd = 0
vspd = 0;
max_spd = 10;
jetpack = 120;
max_jetpack = 120;

spawn_x = x;
spawn_y = y;

part_particles_create(obj_particles.part_sys, x,y,obj_particles.part_type_portal,1);
audio_play_sound(snd_portal, 1, 0);