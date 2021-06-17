draw_self();

if(HP > 1){
	draw_sprite(spr_shield, HP-2, x, y-20);
}

if(sprite_index == spr_shipPink){
	draw_sprite(spr_ball, 0, x, y-26);
}