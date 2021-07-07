function draw_scores(){	
	//draw_text_transformed(16, 48, "Score: " + string(global.player_score), 0.5, 0.5, 0);
	draw_set_halign(fa_right);
	draw_text_transformed(global.cam_width-16, 16, "Score: " + string(global.player_score), 0.5, 0.5, 0);
	draw_set_halign(fa_left);
}
