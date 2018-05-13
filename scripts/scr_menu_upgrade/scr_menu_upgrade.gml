
switch (move_position)
{
	case 0: //continue
	{
		//room_goto(global.room_number);
		with (oController)
			{
				if (!do_transition)
				{
					spawn_room = global.room_number
					do_transition = true
				}
			}
		break;
	}
	
	case 1:
	{
		if global.playerpoints >= 10
		{
			global.player_health += 5
			global.playerpoints -= 10
		}
		break;
	}
	
	case 2:
	{
		if global.playerpoints >= 15 and global.maxhspd <= 7
		{
			global.maxhspd += 0.1
			global.maxvspd += 0.1
			global.playerpoints -= 15
		}
		break;
	}
	
	case 3:
	{
		if global.playerpoints >= 40 and global.Weapon_Catapult = false
		{
			global.Weapon_Catapult = true;
			global.playerpoints -= 40
		}
			break;
	}
	
	case 4:
	{
		if global.playerpoints>= 30 and global.Weapon_Ballistae2 = false
		{
			global.Weapon_Ballistae2 = true
			global.Weapon_Ballistae = false
			global.playerpoints -= 30
		}
			break;

	}
	
	case 5: //Back
	{
		//room_goto(room_menu);
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