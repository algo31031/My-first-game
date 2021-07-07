// Inherit the parent event
event_inherited();

global.bricks_counter.red += 1;
global.pets.dog = true;
global.coins += 25;
with(instance_create_layer(x, y, "Instances", obj_dog)){
	image_xscale = -2;
	alarm[0] = 10*room_speed;
}
