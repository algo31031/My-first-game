global.player_score += point;
global.bricks_counter.total += 1;

if(global.bricks_counter.total and global.bricks_counter.total%50 == 0){
	audio_play_sound(snd_one_up, 2, 0);
	lives += 1;
}