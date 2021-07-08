if(invincible) image_alpha = 1 - alarm[0]/60.0;

if(show_arrow){
	draw_sprite(arrowUp,0,x,bbox_top-30-arrow_span);
	draw_sprite(arrowLeft,0,bbox_left-30-arrow_span,y);
	draw_sprite(arrowRight,0,bbox_right+30+arrow_span,y);
	
	arrow_span += 0.5;
	show_arrow--;
	
	if(arrow_span >= 15) arrow_span = 0;
}

draw_self();

var _xx = direction == 0 ? 3 : -3;
var _gun = gunslinger ? spr_smg : spr_pistol;
draw_sprite_ext(_gun, 0,x+_xx, y,1,1,-direction,c_white,1);
draw_sprite(spr_jetpack,0,x-3*_xx,y-3);
if(shield) draw_sprite_ext(spr_shield, 2, x, y, 0.3, 0.3,0,c_white,1);