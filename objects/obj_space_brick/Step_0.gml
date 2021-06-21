// Inherit the parent event
event_inherited();

if(jet and x < (global.cam_x+global.cam_width/2)){
	direction = 180;
	speed = jet;
	part_particles_create(obj_particles.part_sys,x+sprite_width/2,y,obj_particles.part_type_jet,1);
}

if(bullet_damage and x < (global.cam_x+global.cam_width+sprite_xoffset)){
	if(!cooldown and instance_exists(obj_space_char)){
		var _bullet = instance_create_layer(x-sprite_xoffset-1, y, "Bullets", obj_space_fireball);
		cooldown = _bullet.cooldown;
		_bullet.faction = faction;
		_bullet.bullet_damage = bullet_damage;
		_bullet.image_index = bullet_damage - 1;
		_bullet.direction = point_direction(x-sprite_xoffset-1, y, obj_space_char.x, obj_space_char.y);
		_bullet.image_angle = _bullet.direction - 90;
	}	
}