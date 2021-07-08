if(room == rm_pvz){
	if(collision_rectangle(global.cam_x,y,x,y+35,obj_item_coin,false,false)){
		direction = 180;
		speed = 3;
	} else if(collision_rectangle(x,y,x+global.cam_width,y+35,obj_item_coin,false,false)){
		direction = 0;
		speed = 3;
	} else {
		speed = 0;
	}
	
	x = clamp(x, global.cam_x, global.cam_x+global.cam_width);	
}
