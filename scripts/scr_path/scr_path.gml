//Path Following

if mode = "patrol"
{
	if (point_distance(x,y,oPlayer.x,oPlayer.y) < 1000)
	{
		path_end();
		mode = "chase"
	}
	else if (path_index != set_path)
	{
		mp_potential_step(start_x,start_y,spd,false);
	
		if (abs(x - start_x) < 3 && abs(y - start_y) < 3)
		{
			path_start(set_path,spd,path_action_continue,false);
		}
	}
	
}

