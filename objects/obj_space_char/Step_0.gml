event_inherited();
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
if(shield_restroe){
	shield_restroe--;
	shield_restroe = clamp(shield_restroe, 0, 5*room_speed);
}

if(shield < max_shield and !shield_restroe){
	shield += 1;
	shield = clamp(shield, 0, max_shield);
	audio_play_sound(snd_shield_restore, 2, false);
	
	if(shield < max_shield) shield_restroe = 5*room_speed;
}