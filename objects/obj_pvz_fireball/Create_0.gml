// Inherit the parent event
event_inherited();

cooldown = 10*room_speed;
faction = factions.ally;
bullet_damage = 15;
target_locked = obj_enemy;

speed = 3;

audio_play_sound(snd_sinkWater2, 2, false);
