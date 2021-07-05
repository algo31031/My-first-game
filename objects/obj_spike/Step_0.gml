// Inherit the parent event
event_inherited();

var _d = distance_to_object(obj_final_char);

if(_d <= 100){
	switch(image_angle){
		case 90:
			if(x == xstart) x += 30;
			else x -= 0.5;
			break;
		case 180:
			if(y == ystart) y -= 30;
			else y += 0.5;
			break;
		case 270:
			if(x == xstart) x -= 30;
			else x += 0.5;
			break;
		default:		
			if(y == ystart) y += 30;
			else y -= 0.5;
	}
} else {
	x = xstart;
	y = ystart;
}