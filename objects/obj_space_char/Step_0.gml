event_inherited();
if(global.platform_level){
	direction = point_direction(x, y, room_width, room_height/2);
	speed = move_spd;
	exit;
}

// camera controll
if((global.cam_x + global.cam_width) >= room_width){
	speed = 0;
}

// movement control
if(keyboard_check(vk_left)) x -= move_spd+global.h_move;
if(keyboard_check(vk_right)) x += move_spd;
if(keyboard_check(vk_up)) y -= move_spd;
if(keyboard_check(vk_down)) y += move_spd;

x = clamp(x, global.cam_x+sprite_xoffset, global.cam_x+global.cam_width-sprite_xoffset);
y = clamp(y, global.cam_y+sprite_yoffset+32, global.cam_y+global.cam_height-sprite_yoffset-32);

// shield regeneration
shield_regeneration(10*room_speed);

// secondary weapon cooldown
if(s_cooldown){
	s_cooldown--;
	if(s_cooldown < 0) s_cooldown = 0;
}