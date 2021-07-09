draw_self();

switch(image_index){
	case brick_powers.extend:
		draw_sprite(thin_arrow_left_right_directions,0,x,y);
		break;
	case brick_powers.weaken:
		draw_sprite(farm_animal_chicken_rooster,0,x,y);
		break;
	case brick_powers.slow:
		draw_sprite(money_bag,0,x,y);
		break;
	case brick_powers.cannon:
		draw_sprite(observatory_exploration,0,x,y);
		break;
	case brick_powers.clone:
		draw_sprite(baby_ball_playtime_children,0,x,y,);
		break;
	case brick_powers.UFO:
		draw_sprite(controller_joystick_games_video_console,0,x,y);
		break;
}
