///@desc take damage

HP -= 1;

if(HP > 0){
	var _i = irandom(49);
	switch(_i){
		case 49:
			smiley = spr_cry;
			alarm[1] = 1*room_speed;
			break;
		case 48:
			smiley = spr_angry;
			alarm[2] = 3*room_speed;
			break;
		case 47:
			smiley = spr_nerd;
			alarm[3] = 2*room_speed;
			break;
		case 46:
			smiley = spr_cool;
			alarm[4] = 1*room_speed;
			break;
		default:
			if(_i < 5){
				smiley = choose(spr_shocked,spr_confused,spr_mad,spr_pain,spr_sick,spr_sad,spr_wink,
					spr_surprised,spr_tossy,spr_sick,spr_annoyed,spr_shy,spr_annoyed,spr_happy,
					spr_cute,spr_disbelieve,spr_empty,spr_evil,spr_misfaith,spr_shy,spr_tired);
				alarm[0] = 1*room_speed;		
			}
	}
}

if(y < (global.cam_y+global.cam_height-sprite_height)){
	if(instance_exists(obj_cannon)) exit;
	if(global.brick_power_cd > 0) exit;
	if(irandom_range(0, 7) > 0) exit;
	
	global.brick_power_cd = 1*room_speed;
	instance_create_layer(x, y, "Powers", obj_brick_power);
	//_power.image_index = brick_powers.UFO;
}