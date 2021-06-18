if(moveable && !gun_cooldown){
	gun_cooldown = 0.5*room_speed;
	var _bullet = instance_create_layer(x, y, "Instances", obj_space_bullet);
	with(_bullet){
		faction = factions.ally;
	}
}
