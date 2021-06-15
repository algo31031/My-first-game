audio_play_sound(snd_explosion, 2, false);
instance_destroy(other);
global.player_score += 500;
//global.cam_shake = 2;