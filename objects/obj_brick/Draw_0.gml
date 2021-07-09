if(HP > 5) {
	image_index = 5; 
} else {
	image_index = HP - 1;
}

draw_self();

if(smiley) draw_sprite(smiley,0,x,y);