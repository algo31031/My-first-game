// main weapon
if(global.gameover) exit;

if(!cooldown){
	var _bullet = instance_create_layer(x+sprite_xoffset+1, y, "Bullets", bullet == bullets.laser ? obj_space_laser : obj_space_missile);
	cooldown = _bullet.cooldown;
	_bullet.faction = faction;
	_bullet.bullet_damage = bullet_damage;
	_bullet.image_index = bullet_damage - 1;
}
// secondary weapon
if(!s_cooldown){
	var _yy = y - 10;
	repeat((bullet == bullets.laser ? laser_power : missile_power) - max_bullet_damage){
		var _s_bullet = instance_create_layer(x+sprite_xoffset+1, _yy, "Bullets", bullet == bullets.laser ? obj_space_missile : obj_space_laser);
		s_cooldown = _s_bullet.cooldown;
		_s_bullet.faction = faction;
		_yy += 20; 
	}
}

	
if(bullet == bullets.missile and !m_cooldown){
	m_cooldown = 1*room_speed;
	repeat(bullet_damage){
		instance_create_layer(x, y, "Bullets", obj_space_missile);
	}
}	