if(gunmaster) image_index = 2;
else if(gunslinger) image_index = 1;
else image_index = 0;

draw_self();

if(bullet == bullets.laser){
	draw_sprite(spr_gun,bullet_damage-1,x,y);
} else {
	draw_sprite(spr_spaceMissiles_040,bullet_damage-1,x,y);
}

if(shield) draw_sprite_ext(spr_shield, 2, x, y, 0.35, 0.35,0,c_white,1);

if(HP < full_HP){
	draw_sprite_ext(barBack_verticalMid,0,bbox_left-10,bbox_bottom-35,0.5,2,0,c_white,1);	
	draw_sprite_ext(barVertical_green_mid,0,bbox_left-10,bbox_bottom-35,0.5,2.0*HP/full_HP,0,c_white,1);	
}