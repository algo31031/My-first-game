if(other.locked){
	move_bounce_all(false);
} else {
	if(object_get_name(other.object_index) == "obj_portal_green"){
		audio_play_sound(snd_portal, 1, 0);
		
		instance_activate_object(obj_paddle);
		instance_activate_object(obj_ball);
		instance_deactivate_object(obj_faction);
		instance_deactivate_object(obj_portal);
		instance_activate_object(obj_portal_yellow);

		obj_camera.target = undefined;
		global.cam_x = 0;
		global.cam_y = 0;
		global.v_move = 0;
		global.h_move = 0;

		global.final_boss = true;

		part_particles_create(obj_particles.part_sys,obj_ball.x,obj_ball.y,obj_particles.part_type_portal,1);
		audio_play_sound(snd_portal, 1, 0);		
		instance_destroy();		
	} else {
		spawn_x = other.dest_x;
		spawn_y = other.dest_y;
		x = spawn_x;
		y = spawn_y;
		part_particles_create(obj_particles.part_sys, x,y,obj_particles.part_type_portal,1);
		audio_play_sound(snd_portal, 1, 0);
	}
}