if(other.pause) exit;

audio_play_sound(snd_power, 1, false);

global.player_score += 20;

switch(image_index){
	case brick_powers.extend:		
		with(other){
			image_xscale = 2;
			alarm[0] = 8*room_speed;
		}
		break;
		
	case brick_powers.slow:
		with(obj_ball){
			speed = spd - 0.5;
			alarm[0] = 8*room_speed;
		}
		break;
		
	case brick_powers.clone:
		var _ball = instance_create_layer(
						other.x, 
						other.y-other.sprite_height/2-sprite_get_height(spr_ball)/2-1,
						"Instances", obj_ball);
		_ball.current_paddle = other;
		with(_ball){
			is_extra = true;
			image_index = 1;
		}
		break;
		
	case brick_powers.cannon:
		instance_deactivate_object(obj_ball);
		instance_deactivate_object(obj_paddle);
		instance_deactivate_object(obj_brick_power);
		
		instance_create_layer(other.x, other.y-sprite_get_width(spr_cannon_turret)/2, "Instances", obj_cannon);
		
		break;
		
	case brick_powers.weaken:
		for (var i = 0; i < instance_number(obj_brick); i++;) {
			var _brick = instance_find(obj_brick,i);
			with(_brick){
				if(HP >= 5 or HP == 1){
					continue;
				}				
				temp_HP = HP;
				HP = 1;
			}
		}
		
		obj_game.alarm[1] = 5*room_speed;
		
		break;
	
	case brick_powers.UFO:
		//var _ufo = instance_create_layer(x, y, "Instances", obj_alien);
		//with(_ufo){
		//	if(irandom(1) == 0){
		//		x = -160;
		//		direction = 0;
		//	} else {
		//		x = room_width + 160;
		//		direction = 180;
		//	}
		//	y = irandom_range(room_height/4, room_height*0.75);			
		//}
		for (var i = 0; i < instance_number(obj_ball); i++;) {
			var _ball = instance_find(obj_ball,i);
			with(_ball){
				if(is_extra){
					continue;
				}
				is_flying = true;
				is_UFO = true;
				alarm[1] = 6*room_speed;
			}
			with(other){	
				pause = true;
				alarm[1] = 6*room_speed;
			}
		}
		
		break;
	
}

instance_destroy();