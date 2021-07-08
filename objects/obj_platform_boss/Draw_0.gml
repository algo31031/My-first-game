if(invincible) image_alpha = 0.5;
else image_alpha = 1;

draw_self();

if(shield > 0){
	draw_sprite(spr_shield, shield-1, x, y-20);
}

if(HP < 3){
	part_particles_create(obj_particles.part_sys,x-32,y-6,obj_particles.part_type_smoke,1);
}
if(HP < 2){
	part_particles_create(obj_particles.part_sys,x+34,y+19,obj_particles.part_type_smoke,1);
}