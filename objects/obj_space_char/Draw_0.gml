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
