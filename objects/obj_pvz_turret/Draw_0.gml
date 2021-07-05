if(gunmaster) image_index = 2;
else if(gunslinger) image_index = 1;
else image_index = 0;

draw_self();

if(bullet == bullets.laser){
	draw_sprite(spr_gun,bullet_damage-1,x,y);
} else {
	draw_sprite(spr_spaceMissiles_040,bullet_damage-1,x,y);
}