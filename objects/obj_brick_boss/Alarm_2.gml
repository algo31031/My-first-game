///@desc ball taking control of the UFO ship
audio_play_sound(snd_computerNoise_000, 1, false);
path_start(path_brick_boss_fall, 3, path_action_reverse, false);
alarm[3] = 5*room_speed;
