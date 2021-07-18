if(room == rm_final and global.final_boss){	
	x = clamp(x, global.cam_x+sprite_xoffset, global.cam_x+global.cam_width-sprite_xoffset);
	y = clamp(y, global.cam_y+sprite_yoffset, global.cam_y+global.cam_height-sprite_yoffset);
}
