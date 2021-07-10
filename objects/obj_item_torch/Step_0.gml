if(!cooldown and !clicks){
	var _bullet = instance_create_layer(x, y, "Bullets", obj_pvz_fireball);
	cooldown = _bullet.cooldown;
	_bullet.faction = factions.ally;
} else if(cooldown) {
	cooldown--; 
}

