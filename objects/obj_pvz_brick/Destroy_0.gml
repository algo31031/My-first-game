global.player_score += point;
global.coins += point;
global.bricks_counter.total += 1;

if(global.bricks_counter.total and global.bricks_counter.total%50 == 0){
	audio_play_sound(snd_one_up, 2, 0);
	lives += 1;
}

switch(image_index){
	case 0:
		global.bricks_counter.red += 1;
		break;
	case 1: 
	case 2:
		global.bricks_counter.yellow += 1;
		break;
	case 3:
		global.bricks_counter.green += 1;
		break;
	case 4:
		global.bricks_counter.blue += 1;
		break;
	case 5:
		global.bricks_counter.purple += 1;
		break;
	default:
		global.bricks_counter.rainbow += 1;
}

part_particles_create(obj_particles.part_sys,x,y,obj_particles.part_type_explode_small,1);