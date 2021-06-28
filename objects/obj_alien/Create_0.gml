sprite_index = choose(spr_alien_beige, spr_alien_blue, spr_alien_green, spr_alien_pink, spr_alien_yellow);
speed = 3;

//move_distance = 200;
alarm[0] = 2*room_speed;

x = choose(0 - sprite_width, room_width + sprite_width);
y = random_range((global.cam_x+global.cam_height)/3,(global.cam_x+global.cam_height)/3*2);
direction = x < 0 ? 0 : 180;
