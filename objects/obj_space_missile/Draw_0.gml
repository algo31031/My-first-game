draw_self();

if(target and instance_exists(target)){
	draw_sprite(spr_crossair, 0, target.x, target.y);
}