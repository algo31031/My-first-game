draw_self();

if(target_locked and instance_exists(target_locked)){
	draw_sprite(spr_crossair, 0, target_locked.x, target_locked.y);
}