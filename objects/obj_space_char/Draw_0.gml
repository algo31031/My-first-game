image_index = HP - 1;

if(alarm[1] and alarm[1] < 1*room_speed){
	image_alpha = 1.35 - alarm[1]/60.0
	image_alpha = clamp(image_alpha, 0.35, 1);
}

//if(show_arrow){
//	draw_sprite(arrowUp,0,x,bbox_top-50-arrow_span);
//	draw_sprite(arrowDown,0,x,bbox_bottom+50+arrow_span);
//	draw_sprite(arrowLeft,0,bbox_left-50-arrow_span,y);
//	draw_sprite(arrowRight,0,bbox_right+50+arrow_span,y);
	
//	arrow_span += 0.5;
//	show_arrow--;
	
//	if(arrow_span >= 15) arrow_span = 0;
//}

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