event_inherited();
invincible = true;
if(!alarm[0]) alarm[0] = 600000*room_speed;

var _xx = xprevious + 8*(direction == 0 ? hspd : -hspd);
while(place_meeting(_xx, y, obj_block)){
	_xx--;
}
x = clamp(_xx, global.cam_x+sprite_xoffset, global.cam_x+global.cam_width-sprite_xoffset);