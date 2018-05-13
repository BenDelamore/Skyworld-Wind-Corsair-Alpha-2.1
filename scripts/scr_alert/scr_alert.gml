
//transition triggers
if (!collision_circle(x,y, 1200, oPlayer, false, false))
{
	state = states.wander; 
}


if (collision_circle(x,y, 600, oPlayer, false, false))
{
//	my_dir = point_direction(oPlayer.x,oPlayer.y,x,y)
//	moveX = lengthdir_x(spd, my_dir)
//	moveY = lengthdir_x(spd, my_dir)
//	x += moveX
//	y += moveY
	
	state = states.attack; 
}

else //if (collision_circle(x,y, 1020, oPlayer, false, false))
{
	my_dir = point_direction(x,y, oPlayer.x, oPlayer.y)
	
//default settings  = mp_potential_settings(30,10,3,1)
	mp_potential_settings(45,45,10,1)
	mp_potential_step(oPlayer.x,oPlayer.y,spd,0)

/*
	if speed < 2
	{
		moveX += lengthdir_x(spd, my_dir);
		moveY += lengthdir_y(spd, my_dir);
	}
	else
	{
		moveX = lengthdir_x(2, my_dir);
		moveY = lengthdir_y(2, my_dir);		
	}
	x += moveX
	y += moveY
*/
}

//sprite
//image_xscale = sign(moveX)
