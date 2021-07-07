// Inherit the parent event
event_inherited();

if(HP <= 0){
	instance_destroy();
	exit;
}

if(x < global.cam_x or y < global.cam_y or y > (global.cam_y+global.cam_height)){
	instance_deactivate_object(id);
	exit;
}

if(jet and x < (global.cam_x+global.cam_width/2)){
	direction = 180;
	speed = jet;
	part_particles_create(obj_particles.part_sys,x+sprite_width/2,y,obj_particles.part_type_jet,1);
}

if(chaser and x < (global.cam_x+global.cam_width/3) and !xx and instance_exists(obj_space_char)){
	xx = obj_space_char.x;
	yy = obj_space_char.y;
	direction = point_direction(x, y, xx, yy);
	speed = chaser;
	part_particles_create(obj_particles.part_sys,x+sprite_width/2,y,obj_particles.part_type_jet,1);
}