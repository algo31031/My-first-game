global.player_score += point;
global.bricks_counter.blue += 1;

with(instance_create_layer(x, y, "Bullets", obj_item_coin)){ 
	image_index = 0;
	point = 1;
	value = 1;
}