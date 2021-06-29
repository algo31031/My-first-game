if(global.gameover) exit;

if(!cooldown){
	var _xx = direction == 0 ? (sprite_xoffset+1) : -(sprite_xoffset+1);
	var _bullet = instance_create_layer(x+_xx, y, "Bullets", obj_space_laser);
	cooldown = _bullet.cooldown;
	_bullet.faction = faction;
	_bullet.bullet_damage = bullet_damage;
	_bullet.image_index = bullet_damage - 1;
	_bullet.direction = direction;
	_bullet.image_angle = direction - 90;
}