if(bullet == bullets.laser){
	bullet = bullets.missile;
	bullet_damage = missile_power;
	bullet_damage = clamp(bullet_damage, 1, max_bullet_damage);	
} else {
	bullet = bullets.laser;
	bullet_damage = laser_power;
	bullet_damage = clamp(bullet_damage, 1, max_bullet_damage);
}