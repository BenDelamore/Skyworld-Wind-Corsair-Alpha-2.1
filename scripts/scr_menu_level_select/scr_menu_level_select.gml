
switch (move_position)
{
	case 0: 
	{
		//room_goto(room_level1);
		with (oController)
			{
				if (!do_transition)
				{
					spawn_room = room_level1
					do_transition = true
				}
			}
		break;
	}
	case 1:
	{
		//room_goto(room_level2)
		with (oController)
			{
				if (!do_transition)
				{
					spawn_room = room_level2
					do_transition = true
				}
			}
		break;
	}
	case 2:
	{
		//room_goto(room_level3)
		with (oController)
			{
				if (!do_transition)
				{
					spawn_room = room_level3
					do_transition = true
				}
			}
		break;
	}
	case 3:
	{
		//room_goto(room_testing)
		with (oController)
			{
				if (!do_transition)
				{
					spawn_room = room_testing
					do_transition = true
				}
			}
		break;
	}
	case 4:
	{
		//room_goto(room_menu)
		with (oController)
			{
				if (!do_transition)
				{
					spawn_room = room_menu
					do_transition = true
				}
			}
		break;
	}
	default: break;
}
