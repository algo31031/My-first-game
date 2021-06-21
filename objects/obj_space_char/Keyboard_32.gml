if(!cooldown){
	var _bullet = instance_create_layer(x+sprite_xoffset+1, y, "Bullets", bullet == bullets.laser ? obj_space_laser : obj_space_missile);
	cooldown = _bullet.cooldown;
	_bullet.faction = faction;
	_bullet.bullet_damage = bullet_damage;
	_bullet.image_index = bullet_damage - 1;
}
