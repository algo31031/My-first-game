// Inherit the parent event
event_inherited();

cooldown = 4*room_speed;
faction = factions.enemy;

speed = 4;
direction = 180;

audio_play_sound(snd_alien_shoot, 5, false);
