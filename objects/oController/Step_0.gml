/// @description Special Key Press actions

/*
if keyboard_check_released(vk_escape)
{
	do_transition = true
	spawn_room = room_menu
	global.coins_collected = 0
}

if keyboard_check_released(vk_backspace)
{
	other_transition = true
}
*/

#region //Quit --- escape
if keyboard_check_released(vk_delete)
{
	game_end()
}
#endregion


//Fullscreen
if keyboard_check_pressed(ord("F"))
{
	if window_get_fullscreen() 
	{
		window_set_fullscreen(false);
	}
	else
	{
		window_set_fullscreen(true);
	}
}