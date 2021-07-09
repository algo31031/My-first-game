part_particles_create(obj_particles.part_sys, x+lengthdir_x(sprite_xoffset,direction), 
	y+lengthdir_y(sprite_yoffset, direction), obj_particles.part_type_hit_char, 1);
if(!audio_is_playing(snd_hit_brick)) audio_play_sound(snd_hit_brick, 1, false);
direction = point_direction(other.x, other.y, x, y);
image_angle = direction - 90;
y = clamp(y, y-other.sprite_height, y-2);
flag = true;