// Inherit the parent event
event_inherited();

distance = distance_to_object(obj_final_char);

// 水平方向移动时
if(speed != 0 and (direction == 0 or direction == 180)){
	// 脚下无路时掉头
	if(!place_meeting(x+sign(speed)*sprite_width,y+1,obj_block) and !place_meeting(x+sign(speed)*sprite_width,y-1,obj_block)){
		speed *= -1;
	}
	// 遇到墙后掉头
	if(place_meeting(x+sign(speed),y,obj_block)){
		speed *= -1;
	}
	// 追踪距离之内速度翻倍
	if(distance <= alert_distance and !chaser){
		speed = 3*sign(speed);
	} else {
		speed = sign(speed);
	}
}

// 垂直方向移动时
if(speed != 0 and (direction == 90 or direction == 270)){
	var _yy = direction == 90 ? -1 : 1;
	// 脚下无路时掉头
	if(!place_meeting(x+1,y+_yy*sprite_width,obj_block) and !place_meeting(x-1,y+_yy*sprite_width,obj_block)){
		direction += 180;
	}
	// 遇到墙后掉头
	if(place_meeting(x,y+_yy,obj_block)){
		direction += 180;
	}
	// 警戒距离内，速度翻倍
	if(distance <= alert_distance and !chaser){
		speed = 3;
	} else {
		speed = 1;
	}
}

// 警戒距离内，定时射击
if(bullet_damage and distance <= alert_distance){
	if(!cooldown and instance_exists(obj_final_char)){
		var _bullet = instance_create_layer(x, y, "Bullets", obj_space_fireball);
		cooldown = _bullet.cooldown;
		_bullet.faction = faction;
		_bullet.bullet_damage = bullet_damage;
		_bullet.image_index = bullet_damage - 1;
		_bullet.direction = point_direction(x, y, obj_final_char.x, obj_final_char.y);
		_bullet.image_angle = _bullet.direction - 90;
	}	
}

// 警戒距离内，追踪目标
if(chaser){
	if(distance <= alert_distance and distance >= 5){
		var _xx = lerp(x, obj_final_char.x, 0.5);
		var _yy = lerp(y, obj_final_char.y, 0.5);
		motion_set(point_direction(x, y, _xx, _yy), chaser);
	} else {
		speed = spd;
	}
}

move_wrap(true, true, sprite_width/2);