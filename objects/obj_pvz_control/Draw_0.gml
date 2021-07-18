draw_self();

if(direction_icon_left){
	draw_sprite(arrowUp,0,x,bbox_top-30-arrow_span);
	draw_sprite(arrowDown,0,x,bbox_bottom+30+arrow_span);
	draw_sprite(arrowLeft,0,bbox_left-30-arrow_span,y);
	draw_sprite(arrowRight,0,bbox_right+30+arrow_span,y);
	
	arrow_span += 0.5;
	
	if(arrow_span >= 15) arrow_span = 0;
}

draw_sprite_ext(grey_panel,0,x+125, y-70,3,1,0,c_white,0.75);

if(!place_meeting(x,y, obj_pvz_turret)){	
	draw_sprite_ext(ballBlue_08,0,x,y,1,1,0,c_white,0.5);
	draw_sprite_ext(spr_gun,0,x,y,1,1,0,c_white,0.5);
	draw_sprite(spr_gun,0,x,y-90);
	draw_sprite(ballBlue_08,0,x,y-50);
	draw_sprite_ext(spr_coin, 0,x+165 , y-90, 0.5, 0.75, 0, c_white, 1);
	draw_text_transformed_color(x+185+shake_x_t,y-104+shake_y_t,string(turret_values.turret_update[0]),
		0.75,0.75,0,c_orange,c_orange,c_orange,c_orange,1);
	if(global.coins >= turret_values.turret_update[0]){
		draw_set_font(ft_UI_Chs);
		draw_text_transformed_color(x+32, y-102,"召唤新弹球",0.5,0.5,0,c_dkgray,c_dkgray,c_dkgray,c_dkgray,1);
		draw_sprite_ext(green_button10,0,x+125,y-50,1.25,0.75,0,c_white,1);
		draw_text_transformed(x+99,y-62,"X召唤",0.5,0.5,0);
	} else {
		draw_set_font(ft_UI_Chs);
		draw_text_transformed_color(x+48, y-102,"金币不足",0.5,0.5,0,c_maroon,c_maroon,c_maroon,c_maroon,1);
		draw_sprite_ext(red_button07,0,x+125,y-50,1.25,0.75,0,c_white,1);
		draw_text_transformed_color(x+99,y-62,"X召唤",0.5,0.5,0,c_silver,c_silver,c_silver,c_silver,1);
	}
} else {	
	with(instance_nearest(x,y,obj_pvz_turret)){
		if(bullet_damage < 3){
			draw_sprite(spr_gun,bullet_damage,x,y-90);
			draw_sprite_ext(spr_coin, 0,x+130 , y-90, 0.5, 0.75, 0, c_white, 1);
			draw_text_transformed_color(x+145+obj_pvz_control.shake_x_t,y-104+obj_pvz_control.shake_y_t,string(obj_pvz_control.turret_values.weapon_update[bullet_damage]),
				0.75,0.75,0,c_orange,c_orange,c_orange,c_orange,1);
			draw_set_font(ft_UI_Chs);
			if(global.coins >= obj_pvz_control.turret_values.weapon_update[bullet_damage]){
				draw_text_transformed_color(x+32, y-102,"升级武器",0.5,0.5,0,c_dkgray,c_dkgray,c_dkgray,c_dkgray,1);
				draw_sprite_ext(green_button10,0,x+230,y-90,1.25,0.75,0,c_white,1);
				draw_text_transformed(x+204,y-100,"B升级",0.5,0.5,0);
			} else {
				draw_text_transformed_color(x+32, y-102,"金币不足",0.5,0.5,0,c_maroon,c_maroon,c_maroon,c_maroon,1);
				draw_sprite_ext(red_button07,0,x+230,y-90,1.25,0.75,0,c_white,1);
				draw_text_transformed_color(x+204,y-100,"B升级",0.5,0.5,0,c_silver,c_silver,c_silver,c_silver,1);				
			}
		} else {
			draw_sprite(spr_gun,bullet_damage-1,x,y-90);
			draw_sprite_ext(red_button07,0,x+130,y-90,1.25,0.75,0,c_white,1);
			draw_set_font(ft_UI_Chs);
			draw_text_transformed_color(x+108,y-104,"满级",0.5,0.5,0,c_silver,c_silver,c_silver,c_silver,1);
		}
		
		if(image_index < 2){
			draw_sprite(ballBlue_08,image_index+1,x,y-50);
			draw_sprite_ext(spr_coin, 0,x+130 , y-50, 0.5, 0.75, 0, c_white, 1);
			draw_set_font(ft_UI_space);
			draw_text_transformed_color(x+145+obj_pvz_control.shake_x_w,y-64+obj_pvz_control.shake_y_w,string(obj_pvz_control.turret_values.turret_update[image_index+1]),
				0.75,0.75,0,c_orange,c_orange,c_orange,c_orange,1);
			draw_set_font(ft_UI_Chs);
			if(global.coins >= obj_pvz_control.turret_values.turret_update[image_index+1]){
				draw_text_transformed_color(x+32, y-62,"提高射速",0.5,0.5,0,c_dkgray,c_dkgray,c_dkgray,c_dkgray,1);
				draw_sprite_ext(green_button10,0,x+230,y-50,1.25,0.75,0,c_white,1);
				draw_text_transformed(x+204,y-60,"A升级",0.5,0.5,0);
			} else {
				draw_text_transformed_color(x+32, y-62,"金币不足",0.5,0.5,0,c_maroon,c_maroon,c_maroon,c_maroon,1);
				draw_sprite_ext(red_button07,0,x+230,y-50,1.25,0.75,0,c_white,1);
				draw_text_transformed_color(x+204,y-60,"A升级",0.5,0.5,0,c_silver,c_silver,c_silver,c_silver,1);			
			}
		} else {
			draw_sprite(ballBlue_08,image_index,x,y-50);
			draw_sprite_ext(red_button07,0,x+130,y-50,1.25,0.75,0,c_white,1);
			draw_set_font(ft_UI_Chs);
			draw_text_transformed_color(x+108,y-64,"满级",0.5,0.5,0,c_silver,c_silver,c_silver,c_silver,1);		
		}
	}
}

draw_set_font(ft_UI_space);

if(mouse_icon_left and instance_exists(obj_item_coin)){
	var _xx = irandom_range(-2,2);
	var _yy = irandom_range(-2,2);
	var _coin = instance_nearest(x,y,obj_item_coin);
	draw_sprite(spr_mouseLeft, 0, _coin.x+_xx, _coin.bbox_top-30+_yy);
}