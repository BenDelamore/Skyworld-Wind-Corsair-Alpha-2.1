
//behaviour
	counter += 1
	
//transition triggers
if (counter >= room_speed * 3)
	{
		var change = choose(0,1);
		switch(change)
		{
			case 0: state = states.idle; break;
			case 1:
			move_wander = 1
			my_dir = irandom_range(0,359);
			counter = 0;
			break;
		}
	}

if !not place_meeting(x,y,oEnemy_path)
{
	var pathX = oEnemy_path.x
	var pathY = oEnemy_path.y
	
	my_dir = point_direction(x,y,pathX,pathY)
}
	
//Movement
if move_wander = 1
{
	if moveX >= 3
	{
		moveX = lengthdir_x(3, my_dir);
		moveY = lengthdir_y(3, my_dir);
	}
	else
	{
		moveX += lengthdir_x(spd, my_dir);
		moveY += lengthdir_y(spd, my_dir);
	}
	
	x += moveX
	y += moveY
}

//Alert State Transition
if (collision_circle(x,y, 1000, oPlayer, false, false))
	{
		move_wander = 0
		state = states.alert;
	}
	
	//sprite
	//image_xscale = sign(moveX);
	