draw_set_halign(fa_center);
draw_set_font(ft_UI_Chs);
//draw_text(room_width/2, 32, string(current_hour) + ":" + string(current_minute) + "." + string(current_second));
var _txt = alarm[11] > 0 ? ("导弹部署倒计时："+string(floor(alarm[11]/60))) : "按Y发射导弹"
draw_text_transformed(room_width/2, 32, _txt,0.75,0.75,0);
draw_set_font(ft_UI_space);
draw_set_halign(fa_left);

//var _shake = alarm[11] ? 0 : irandom_range(-3,3);

//draw_sprite_ext(spr_spaceMissiles_040, 2, 32, room_height-72,1,1,-90,c_white,alarm[11] ? 0.25 : 1);
//draw_sprite(spr_number_1, 0, 32+_shake, room_height-108-_shake);