if(!is_flying) exit;

y = other.y - other.sprite_yoffset - sprite_yoffset;
direction = point_direction(other.x, other.y, x, y);
audio_play_sound(snd_hit_wall, 1, false);
speed_up();