//behaviour
my_dir = point_direction(oPlayer.x, oPlayer.y,x,y)

/*
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
	
	x = moveX
	y = moveY
*/

if Enemy_firingdelay <= 0
{
	with (instance_create_layer(x - 15, y - 10, "projectiles_layer", oEnemy_projectile))
		{
			speed = 9;
			direction = point_direction(x,y,(oPlayer.x + 5),(oPlayer.y - 15))
			//other.image_angle = other.direction;

		//oEnemy_projectile.creator = id;
		//oEnemyprojectile.direction = point_direction(x,y,oPlayer.x,oPlayer.y)
		//oEnemy_projectile.image_angle = direction;
		}
	Enemy_firingdelay = 35
}

//transition triggers
if Enemy_firingdelay > 0
{
	state = states.alert
}
