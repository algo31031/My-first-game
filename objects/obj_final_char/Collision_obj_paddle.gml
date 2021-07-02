part_particles_create(obj_particles.part_sys,x,y,obj_particles.part_type_explode_small,1);
instance_destroy();
with(instance_create_layer(other.x,other.y,"Instances",obj_ball)) is_flying = true;
instance_deactivate_object(obj_faction);
instance_deactivate_object(obj_item);
instance_deactivate_object(obj_portal);

instance_activate_object(obj_key_yellow);

obj_camera.target = undefined;
global.cam_x = 0;
global.cam_y = 0;

global.final_boss = true;