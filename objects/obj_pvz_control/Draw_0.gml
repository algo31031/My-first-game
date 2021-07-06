draw_self();

draw_sprite_ext(grey_panel,0,x+75, y-70,2,1,0,c_white,0.75);

if(!place_meeting(x,y, obj_pvz_turret)){
	draw_sprite_ext(ballBlue_08,0,x,y,1,1,0,c_white,0.5);
	draw_sprite_ext(spr_gun,0,x,y,1,1,0,c_white,0.5);
	draw_sprite(spr_gun,0,x,y-90);
	draw_sprite(ballBlue_08,0,x,y-50);
	draw_sprite_ext(spr_coin, 0,x+65 , y-90, 0.5, 0.75, 0, c_white, 1);
	draw_text_transformed(x+85+shake_x,y-98+shake_y,"* "+string(turret_values.turret_update[0]),0.5,0.5,0);
	if(global.coins >= turret_values.turret_update[0]){
		draw_sprite_ext(green_button10,0,x+100,y-50,2,0.5,0,c_white,1);
		draw_text_transformed(x+65,y-60,"SPACE",0.5,0.5,0);
	} else {
		draw_sprite_ext(red_button07,0,x+100,y-50,2,0.5,0,c_white,1);
		draw_text_transformed_color(x+65,y-60,"SPACE",0.5,0.5,0,c_gray,c_gray,c_gray,c_gray,1);
	}
} else {
	with(instance_nearest(x,y,obj_pvz_turret)){
		if(bullet_damage < 3){
			draw_sprite(spr_gun,bullet_damage,x,y-90);
			draw_sprite_ext(spr_coin, 0,x+30 , y-90, 0.5, 0.75, 0, c_white, 1);
			draw_text_transformed(x+45+obj_pvz_control.shake_x,y-98+obj_pvz_control.shake_y,"*"+string(obj_pvz_control.turret_values.weapon_update[bullet_damage]),0.5,0.5,0);
			if(global.coins >= obj_pvz_control.turret_values.weapon_update[bullet_damage]){
				draw_sprite_ext(green_button10,0,x+130,y-90,1.3,0.5,0,c_white,1);
				draw_text_transformed(x+104,y-100,"Ctrl",0.5,0.5,0);
			} else {
				draw_sprite_ext(red_button07,0,x+130,y-90,1.3,0.5,0,c_white,1);
				draw_text_transformed_color(x+104,y-100,"Ctrl",0.5,0.5,0,c_gray,c_gray,c_gray,c_gray,1);				
			}
		} else {
			draw_sprite(spr_gun,bullet_damage-1,x,y-90);
			draw_sprite_ext(red_button07,0,x+130,y-90,1,0.5,0,c_white,1);
			draw_text_transformed_color(x+108,y-100,"Max",0.5,0.5,0,c_gray,c_gray,c_gray,c_gray,1);
		}
		
		if(image_index < 2){
			draw_sprite(ballBlue_08,image_index+1,x,y-50);
			draw_sprite_ext(spr_coin, 0,x+30 , y-50, 0.5, 0.75, 0, c_white, 1);
			draw_text_transformed(x+45+obj_pvz_control.shake_x,y-58+obj_pvz_control.shake_y,"*"+string(obj_pvz_control.turret_values.turret_update[image_index+1]),0.5,0.5,0);
			if(global.coins >= obj_pvz_control.turret_values.turret_update[image_index+1]){	
				draw_sprite_ext(green_button10,0,x+130,y-50,1,0.5,0,c_white,1);
				draw_text_transformed(x+112,y-60,"Alt",0.5,0.5,0);
			} else {
				draw_sprite_ext(red_button07,0,x+130,y-50,1,0.5,0,c_white,1);
				draw_text_transformed_color(x+112,y-60,"Alt",0.5,0.5,0,c_gray,c_gray,c_gray,c_gray,1);			
			}
		} else {
			draw_sprite(ballBlue_08,image_index,x,y-50);
			draw_sprite_ext(red_button07,0,x+130,y-50,1,0.5,0,c_white,1);
			draw_text_transformed_color(x+108,y-60,"Max",0.5,0.5,0,c_gray,c_gray,c_gray,c_gray,1);		
		}
	}
}