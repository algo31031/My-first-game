// Inherit the parent event
event_inherited();

if(cooldown and gunmaster) cooldown--;

if(!cooldown and collision_rectangle(x,y-70,x+global.cam_width,y,obj_pvz_enemy,false,false)){
	var _bullet = instance_create_layer(x+sprite_xoffset+1, y, "Bullets", bullet == bullets.laser ? obj_space_laser : obj_space_missile);
	cooldown = _bullet.cooldown*2;
	_bullet.faction = faction;
	_bullet.bullet_damage = bullet_damage;
	_bullet.image_index = bullet_damage - 1;
}