// Inherit the parent event
event_inherited();

invincible = true;
HP = 999;
max_HP = 3;

switch(image_angle){
	case 90:
		path_start(path_spike_right,0.5,path_action_restart,0);
		break;
	case 180:
		path_start(path_spike_up,0.5,path_action_restart,0);
		break;
	case 270:
		path_start(path_spike_left,0.5,path_action_restart,0);
		break;
	default:
		path_start(path_spike_down,0.5,path_action_restart,0);		
}