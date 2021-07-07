if(speed > 0) exit;

direction = point_direction(x,y,global.cam_x+global.cam_width-24,global.cam_y+88);
speed = 15;

audio_play_sound(snd_coin,1,0);