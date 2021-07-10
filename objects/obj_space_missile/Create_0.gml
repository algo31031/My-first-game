// Inherit the parent event
event_inherited();

cooldown = 1*room_speed;
target_locked = obj_enemy;
max_spd = 12;
faction = factions.ally;

speed = 4;

audio_play_sound(snd_missile, 5, false);

