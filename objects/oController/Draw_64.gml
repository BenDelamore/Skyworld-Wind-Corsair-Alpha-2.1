 /// @description Insert description here

#region //Return to Menu --- backspace
if keyboard_check_released(vk_backspace)
{
	other_transition = true
	//room_goto(room_menu)
	if do_transition = false
	{
		if white_alpha < 1
		{
			t2 += 1/60
			white_alpha = ease("easeinoutcubic",t2) //* amplify + offest;
		}
		if (white_alpha = 1)
		{
			global.coins_collected = 0
			room_goto(room_menu)
		//spawn_room = room_menu
		//do_transition = true
		}
	}
}
#endregion

#region //Restart --- space
if keyboard_check_released(vk_space)
{
	other_transition = true
	//room_restart()
	if (!do_transition)
	{
		if white_alpha < 1
		{
			t2 += 1/60
			white_alpha = ease("easeinoutcubic",t2) //* amplify + offest;
		}
		if (white_alpha >= 1)
		{
			global.coins_collected = 0
			room_restart()
		}
		//do_transition = true
	}
}
#endregion

#region	//go to spawn_room (room transition
if do_transition = true
{
	if (room != spawn_room)
	{
		t += 1/60
		white_alpha = ease("easeinoutcubic",t) //* amplify + offest;
		//white_alpha += 0.05
		if (white_alpha >= 1)
		{
			global.playerpoints += global.coins_collected
			global.coins_collected = 0
			room_goto(spawn_room)
		}
		
//		if instance_exists(oParticle_Snow)
//		{
//			with oParticle_Snow
//			{
//				rm_end = true
//			}
//		}
	}
}
#endregion
#region //Fade out from white
else
{
	if other_transition = false
	{
		if white_alpha > 0
		{
			t2 += 1/60
			white_alpha = 1 - ease("easeinoutcubic",t2) //* amplify + offest;
		}
		if (white_alpha <= 0)
		{
			do_transition = false
		}
	}
}
#endregion

//drawing black/white fade
draw_set_alpha(white_alpha)
draw_set_color(make_color_rgb(255,255,255))
draw_rectangle(0,0,guiWidth,guiHeight,0)
draw_set_alpha(1)
