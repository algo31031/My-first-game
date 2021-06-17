audio_play_sound(snd_hit_brick, 1, false);
direction = point_direction(other.x, other.y, x, y);
image_angle = direction - 90;
y = clamp(y, y-other.sprite_height, y-2);
flag = true;