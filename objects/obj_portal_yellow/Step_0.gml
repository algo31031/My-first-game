if(!instance_exists(obj_ball)) exit;

if(!locked and distance_to_object(obj_ball) < 100){
	part_particles_create_color(obj_particles.part_sys,x,y,obj_particles.part_type_portal,c_navy,1);
}