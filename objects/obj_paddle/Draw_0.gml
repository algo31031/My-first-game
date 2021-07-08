image_index = pause;

draw_self();

if(show_arrow){
	draw_sprite(arrowLeft,0,bbox_left-20-arrow_span,y);
	draw_sprite(arrowRight,0,bbox_right+20+arrow_span,y);
	
	arrow_span += 0.5;
	show_arrow -= 1;
	
	if(arrow_span >= 15) arrow_span = 0;
}