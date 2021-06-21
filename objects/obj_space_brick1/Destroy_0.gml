// Inherit the parent event
event_inherited();

var _power = instance_create_layer(x,y,"Instances",obj_space_power);
if(instance_exists(obj_space_char)){  
	with(obj_space_char){
		if(bullet_damage == 1) _power.image_index = space_powers.bullet;
		
		if(HP < 2) _power.image_index = space_powers.hp;
	}
}
