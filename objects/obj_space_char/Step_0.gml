event_inherited();

if(HP <= 0){
	instance_destroy();
	exit;
}

image_index = HP - 1;

// movement control
if(moveable){
	if(keyboard_check(vk_left)) x -= 3;
	if(keyboard_check(vk_right)) x += 3;
	if(keyboard_check(vk_up)) y -= 3;
	if(keyboard_check(vk_down)) y += 3;
}

x = clamp(x, global.cam_x+sprite_xoffset, global.cam_x+global.cam_width-sprite_xoffset);
y = clamp(y, global.cam_y+sprite_yoffset+32, global.cam_y+global.cam_height-sprite_yoffset-32);

// shield regeneration
if(shield_restroe){
	shield_restroe--;
	shield_restroe = clamp(shield_restroe, 0, 5*room_speed);
}

if(shield < max_shield and !shield_restroe){
	show_debug_message(shield < max_shield and !shield_restroe)
	shield += 1;
	shield = clamp(shield, 0, max_shield);
	audio_play_sound(snd_shield_restore, 2, false);
	
	if(shield < max_shield) shield_restroe = 5*room_speed;
}