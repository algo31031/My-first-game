if(HP <= 0) instance_destroy();

sprite_index = spr_brick;

if(HP > 5) {
	image_index = 5; 
} else {
	image_index = HP - 1;
}

