event_inherited();

max_shield = 3;
max_HP = 3;
max_damage = 3;
shield = 3;
HP = 3;
bullet_damage = 1;
//bullet = bullets.missile;
bullet = bullets.laser;
invincible = true;
moveable = false;
shield_restroe = 0;


x = global.cam_x;
y = room_height/2;
image_speed = 0;
image_index = 2;
image_alpha = 0.35;


path_start(path_space_enter, 4, path_action_stop, false);
alarm[0] = 80;
alarm[1] = 2*room_speed;