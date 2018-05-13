//State Machine
enum states
{
	idle,
	wander,
	alert,
	attack,
	collision
}

/*
enum player_states
{
	move,
	attack
}
*/

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

white_alpha = 1;

spawn_room = -1;

do_transition = false

other_transition = false

//easings variables
t = 0
t2 = 0
amplify = 1
offset = 0


//player_health = global.player_health

//global.room_number = layer_get_target_room()