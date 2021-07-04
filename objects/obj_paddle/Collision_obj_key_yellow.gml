instance_destroy(other);
audio_play_sound(snd_doorOpen_1, 2, 0);

for (var i = 0; i < instance_number(other.target); i++;) {
	var _portal = instance_find(other.target,i);
	with(_portal){
		locked = false;
	}
}