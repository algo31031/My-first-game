part_particles_create(obj_particles.part_sys,x,y,obj_particles.part_type_explode_small,1);

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

instance_destroy();