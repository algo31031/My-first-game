draw_self();
var _xx = direction == 0 ? (x+3) : (x-3);
var _gun = gunslinger ? spr_smg : spr_pistol;
draw_sprite_ext(_gun, 0, _xx, y,1,1,-direction,c_white,1);
if(shield) draw_sprite_ext(spr_shield, shield-1, x, y, 0.25, 0.25,0,c_white,1);