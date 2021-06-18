image_index = HP - 1;

if(moveable){
	if(keyboard_check(vk_left)) x -= 3;
	if(keyboard_check(vk_right)) x += 3;
	if(keyboard_check(vk_up)) y -= 3;
	if(keyboard_check(vk_down)) y += 3;
}

if(gun_cooldown){
	gun_cooldown--;
	if(gun_cooldown < 0) gun_cooldown = 0;
}	
