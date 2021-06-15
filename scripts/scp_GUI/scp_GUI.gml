function draw_scores(){	
	draw_text(16, 48, "Score: " + string(global.player_score));
	draw_set_halign(fa_right);
	draw_text(room_width - 16, 48, "High Score: " + string(global.high_score));
	draw_set_halign(fa_left);
}