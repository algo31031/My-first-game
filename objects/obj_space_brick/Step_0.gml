// Inherit the parent event
event_inherited();

if(HP <= 0){
	instance_destroy();
	exit;
}

if(jet and x < (global.cam_x+global.cam_width/2)){
	direction = 180;
	speed = jet;
	part_particles_create(obj_particles.part_sys,x+sprite_width/2,y,obj_particles.part_type_jet,1);
}