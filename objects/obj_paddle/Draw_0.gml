image_index = pause;

draw_self();

if(show_arrow){
	draw_sprite(arrowLeft,0,bbox_left-20-arrow_span,y);
	draw_sprite(arrowRight,0,bbox_right+20+arrow_span,y);
	
	arrow_span += 0.5;
	show_arrow -= 1;
	
	if(arrow_span >= 15) arrow_span = 0;
}

if(array_length(trash)){
	for (var i = 0; i < array_length(trash); ++i;){
		trash[i][1] = clamp(trash[i][1],bbox_left-x,bbox_right-x); 
		draw_sprite_ext(trash[i][0],0,x+trash[i][1],trash[i][2],0.25,0.25,0,c_white,1);
    }
}
