cannonball_count -= 1;
audio_play_sound(snd_fire_cannon, 2, false);
var _cannonball = instance_create_layer(x+lengthdir_x(sprite_width, image_angle), 
										y+lengthdir_y(sprite_width, image_angle), 
										"Instances", obj_cannonball);
_cannonball.image_angle = image_angle;
_cannonball.direction = image_angle;
