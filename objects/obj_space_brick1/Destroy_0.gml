// Inherit the parent event
global.player_score += point;
global.bricks_counter.yellow += 1;

var _power = instance_create_layer(x,y,"Instances",obj_space_power);
_power.alarm[0] = 6*room_speed;
if(instance_exists(obj_space_char)){  
	with(obj_space_char){
		if(HP < 2) _power.image_index = space_powers.hp;
		else if(bullet_damage == 1) _power.image_index = space_powers.bullet;
		else if(HP == max_HP) _power.image_index = choose(space_powers.bullet,space_powers.shield,space_powers.speed);
		else if(shield == max_shield) _power.image_index = choose(space_powers.bullet,space_powers.hp,space_powers.speed);			
	}
}
