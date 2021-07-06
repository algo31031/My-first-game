// Inherit the parent event
event_inherited();

image_speed = 0;
image_index = irandom(7);

shield = 0;
max_shield = 0;
h_move = -32;
h_move_time = 1.5*room_speed;

alarm[0] = h_move_time;