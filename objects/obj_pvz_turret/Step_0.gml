// Inherit the parent event
event_inherited();

shield_regeneration(10*room_speed);

if(cooldown and gunmaster) cooldown--;

if(!cooldown and collision_rectangle(x,y-70,x+global.cam_width,y,obj_pvz_enemy,false,false)){
	var _bullet = instance_create_layer(x+sprite_xoffset+1, y, "Bullets", bullet == bullets.laser ? obj_space_laser : obj_space_missile);
	cooldown = _bullet.cooldown*6;
	_bullet.faction = faction;
	_bullet.bullet_damage = bullet_damage;
	_bullet.image_index = bullet_damage - 1;
}

if(HP <= 0){ 
	audio_play_sound(snd_die,1,0);
	part_particles_create(obj_particles.part_sys, x,y,obj_particles.part_type_explode_small,1);
	instance_destroy();	
}

if(x >= 1225){
	instance_destroy();
	part_particles_create(obj_particles.part_sys, x,y,obj_particles.part_type_portal,1);
	audio_play_sound(snd_portal, 1, 0);	
}