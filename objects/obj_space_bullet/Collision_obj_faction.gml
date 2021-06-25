if(faction == other.faction) exit;

instance_destroy();

other.take_damage += bullet_damage;

with(other){
	event_user(0); // faction take damage event
}
