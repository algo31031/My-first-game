audio_play_sound(snd_brick_trash,2,0);
instance_destroy();
array_insert(other.trash,0,[sprite_index,(x-other.x),y]);