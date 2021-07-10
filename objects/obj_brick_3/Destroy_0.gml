// Inherit the parent event
event_inherited();

global.bricks_counter.blue += 1;

if(irandom(4) == 0){
	generate_coin();
}