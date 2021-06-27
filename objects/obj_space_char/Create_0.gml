event_inherited();

max_shield = 3;
max_HP = 3;
max_bullet_damage = 3;
max_weapon_power = 5;
shield = 3;
HP = 3;
bullet_damage = 1;
laser_power = 1;
missile_power = 1;
//bullet = bullets.missile;
bullet = bullets.laser;
s_cooldown = 0;
invincible = true;
shield_restroe = 0;
move_spd = 3;



x = global.cam_x + sprite_xoffset/2;
y = room_height/2;
image_alpha = 0.35;
image_speed = 0;
image_index = 2;
speed = 2;
alarm[1] = 3*room_speed;

if(room == rm_platform){
	shield = 0;
	HP = 1;
	shield_restroe = 10*room_speed;
	y = room_height - 324;
	image_alpha = 1;
	alarm[1] = -1;
}