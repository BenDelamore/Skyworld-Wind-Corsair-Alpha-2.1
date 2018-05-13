//x = oPlayer.x+64
//y = oPlayer.y+2

if oPlayer.hspd <= -0.1
{
	x = oPlayer.x - 64
	y = oPlayer.y - 2
}
else
{
	x = oPlayer.x + 64
	y = oPlayer.y - 2	
}

image_angle = clamp(point_direction(x,y,mouse_x,mouse_y),0,360); 

firing_delay -= 1;
//recoil = max(0, recoil - 1);

if (mouse_check_button(mb_left)) && (firing_delay < 0)
{
//	recoil = 59;
	direction = image_angle //+ random_range(-3,3));
	dir = direction
	repeat(3)
	{
		dir += 15
		with (instance_create_layer(x,y,"projectiles_layer",oProjectile))
		{
			speed = (15 + (oPlayer.spd));
		
			direction =  (other.image_angle + dir) //+ random_range(-3,3));
			image_angle = direction;
		}
	firing_delay = 30;
	}
}

if oPlayer.hp <= 0
{
	instance_destroy()
}
