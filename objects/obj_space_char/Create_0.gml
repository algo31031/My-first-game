event_inherited();

shield = 3;
HP = 3;
gun = -1;
invincible = true;
moveable = false;
gun_cooldown = 0;

y = (room_height-32)/2;
image_speed = 0;
image_index = 2;
image_alpha = 0.5;


path_start(path_space_enter, 4, path_action_stop, false);
alarm[0] = 80;
alarm[1] = 2*room_speed;