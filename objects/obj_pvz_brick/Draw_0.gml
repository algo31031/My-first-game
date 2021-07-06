draw_self();

if(shield) draw_sprite(shieldSilver,0,x-sprite_xoffset,y);

if(HP < full_HP){
	draw_sprite_ext(barHorizontal_shadow_mid,0,x-32,bbox_top-10,4,0.5,0,c_white,1);
	draw_sprite_ext(barHorizontal_green_mid,0,x-32,bbox_top-10,4.0*HP/full_HP,0.5,0,c_white,1);	
}