image_index = HP - 1;

if(alarm[1] and alarm[1] < 1*room_speed){
	image_alpha = 1.35 - alarm[1]/60.0
	image_alpha = clamp(image_alpha, 0.35, 1);
}

draw_self();

if(shield > 0){
	draw_sprite(spr_shield, shield-1, x, y-20);
}

draw_sprite(spr_ball, 0, x, y-26);

if(HP < max_HP){
	part_particles_create(obj_particles.part_sys,x-32,y-6,obj_particles.part_type_smoke,1);
}
if(HP < 2){
	part_particles_create(obj_particles.part_sys,x+34,y+19,obj_particles.part_type_smoke,1);
}