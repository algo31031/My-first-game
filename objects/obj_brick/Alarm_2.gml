///@desc explode
smiley = 0;
audio_play_sound(snd_explosion_small,1,0);
part_particles_create(obj_particles.part_sys,x,y,obj_particles.part_type_explode_small,1);
instance_destroy();

var _bricks = ds_list_create();
var _num = collision_circle_list(x, y, 35, obj_brick, false, true, _bricks, false);
if (_num > 0){
    for (var i = 0; i < _num; ++i;){
        with(_bricks[| i]) event_user(0);
    }
}
ds_list_destroy(_bricks);

var _balls = ds_list_create();
var _num = collision_circle_list(x, y, 64, obj_ball, false, true, _balls, false);
if (_num > 0){
    for (var i = 0; i < _num; ++i;){
        with(_balls[| i]){ 
			alarm[2] = 0.5*room_speed;
			speed = 0;
		}
    }
}
ds_list_destroy(_balls);
