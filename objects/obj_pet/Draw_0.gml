if(xprevious > x){
	image_xscale = -2;	
	if(sprite_index != sprites.run){ 	
		sprite_index = sprites.run;
	}
} else if(xprevious < x){
	image_xscale = 2;
	if(sprite_index != sprites.run){ 		
		sprite_index = sprites.run;
	}
} else {
	image_xscale = 2;
	if(sprite_index != sprites.sit and sprite_index != sprites.idle and sprite_index != sprites.idle_blink){
		sprite_index = choose(sprites.sit, sprites.idle, sprites.idle_blink);		
	}
}

draw_self();