// Inherit the parent event
event_inherited();

if(locked){
	draw_sprite_ext(sprite_index,0,x+10,y-12,0.25,0.25,0,c_white,1);
	draw_sprite(flagBlueHanging,0,dest_x,dest_y);
} else {
	draw_sprite(flagBlue,-1,dest_x,dest_y);
}

