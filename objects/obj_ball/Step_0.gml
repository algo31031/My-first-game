if(global.final_level and room == rm_platform){
	direction = point_direction(x, y, global.cam_x+80,global.cam_y+650);
	
	if(point_in_circle(x, y, global.cam_x+80,global.cam_y+650, 25)) room_goto(rm_final);
	exit;
}

if(!is_flying){
	var _paddle = current_paddle ? current_paddle : obj_paddle;
	x = _paddle.x;
	y = _paddle.y - sprite_height/2 - _paddle.sprite_height/2 - 1;
	
	exit;
}

if(!current_paddle){
	for(var i = 0; i < instance_number(obj_paddle); ++i;){
		var _paddle = instance_find(obj_paddle,i);
		if(!_paddle.pause){ 
			current_paddle = _paddle;
			break;
		}
    }
}

// Collision
var _xx = global.cam_x + global.cam_width;
var _yy = global.cam_y + global.cam_height;

if(bbox_left < global.cam_x or bbox_right > _xx){
	speed_up();
	audio_play_sound(snd_hit_wall, 1, false);
	x = clamp(x, global.cam_x + sprite_xoffset, _xx - sprite_xoffset);
	hspeed *= -1;
} 

if(bbox_bottom > _yy){
	instance_destroy();	
	
	if(!is_extra){
		with(obj_paddle){
			image_xscale = 1;
			x = xstart; 
		}		
	}	
}

if(bbox_top < global.cam_y){
	speed_up();
	audio_play_sound(snd_hit_wall, 1, false);
	y = clamp(y,  global.cam_y + sprite_yoffset, _yy - sprite_yoffset);				
	vspeed *= -1;
}

// UFO模式，玩家变为控制球而非球拍
if(is_UFO){
	speed = 0;
	// 猫猫~
	//if(global.pets.cat == 1){		
	if(sprite_index != bwcat_idle_strip8 and sprite_index != cat_idle_blink_strip8){ 
		sprite_index = choose(cat_idle_strip8, cat_idle_blink_strip8);
	}
	image_speed = 1;
	image_xscale = 2;
	image_yscale = 2;
	
	if(keyboard_check(vk_left)){
		x -= 0.75;
		if(sprite_index != cat_run_strip4) sprite_index = cat_run_strip4;
		image_xscale = -2;
	}
	if(keyboard_check(vk_right)){ 
		x += 0.75;
		if(sprite_index != cat_run_strip4) sprite_index = cat_run_strip4;
		image_xscale = 2;		
	}
	if(keyboard_check(vk_up)){
		y -= 0.75;
		if(sprite_index != cat_jump_strip4) sprite_index = cat_jump_strip4;
	}
	if(keyboard_check(vk_down)){
		y += 0.75;
		if(sprite_index != cat_fall_strip3) sprite_index = cat_fall_strip3;
	}
	//} else {
	//	part_particles_create(obj_particles.part_sys,x,y,obj_particles.part_type_spark,1);
		
	//	if(keyboard_check(vk_left)) x -= 0.75;
	//	if(keyboard_check(vk_right)) x += 0.75;
	//	if(keyboard_check(vk_up)) y -= 0.75;
	//	if(keyboard_check(vk_down)) y += 0.75;	
	//}
	
	x = clamp(x, global.cam_x+sprite_width/2, global.cam_x+global.cam_width-sprite_width/2);
	y = clamp(y, global.cam_y+sprite_height/2, global.cam_y+global.cam_height-sprite_height/2);
	
	exit;
}

// 避免弹球水平或垂直方向反复跳个不停
if(direction == 0 or direction == 180 or direction == 90 or direction = 270){
	direction += choose(5, -5);
}

show_debug_message(direction)