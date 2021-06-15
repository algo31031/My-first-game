if(!is_flying) exit;

direction = point_direction(other.x, other.y, x, y);
audio_play_sound(snd_hit_wall, 1, false);
speed_up();