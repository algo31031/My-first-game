event_inherited();

if(global.platform_level){
	direction = point_direction(x, y, room_width, room_height/2);
	speed = move_spd;
	exit;
}

if(HP <= 0){
	audio_play_sound(snd_space_die2, 5, false);
	instance_destroy();
	instance_create_layer(global.cam_x+sprite_xoffset, room_height/2, "Instances", obj_space_char);
	exit;
}

// camera controll
if((global.cam_x + global.cam_width) >= room_width){
	speed = 0;
}

// movement control
if(keyboard_check(vk_left) or keyboard_check(ord("A"))) x -= move_spd+global.h_move;
if(keyboard_check(vk_right) or keyboard_check(ord("D"))) x += move_spd;
if(keyboard_check(vk_up) or keyboard_check(ord("W"))) y -= move_spd;
if(keyboard_check(vk_down) or keyboard_check(ord("S"))) y += move_spd;

x = clamp(x, global.cam_x+sprite_xoffset, global.cam_x+global.cam_width-sprite_xoffset);
y = clamp(y, global.cam_y+sprite_yoffset, global.cam_y+global.cam_height-sprite_yoffset);

// shield regeneration
shield_regeneration(10*room_speed);

// secondary weapon cooldown
if(s_cooldown){
	s_cooldown--;
	if(s_cooldown < 0) s_cooldown = 0;
}