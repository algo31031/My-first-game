// Inherit the parent event
event_inherited();

if(distance_to_object(obj_final_char) > alert_distance and (x != xstart or y != ystart)){
	move_towards_point(xstart, ystart, 1);
}