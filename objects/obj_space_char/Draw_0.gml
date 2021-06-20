draw_self();

if(shield > 0){
	draw_sprite(spr_shield, shield-1, x, y-20);
}

draw_sprite(spr_ball, 0, x, y-26);
