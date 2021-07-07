// Inherit the parent event
event_inherited();

global.bricks_counter.rainbow += 1;
global.pets.cat_bw = 1;
global.coins += 25;
with(instance_create_layer(x, y, "Bullets", obj_catbw)) alarm[0] = 10*room_speed;


