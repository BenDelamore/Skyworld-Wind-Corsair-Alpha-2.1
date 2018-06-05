
//if global.Weapon_Catapult = true
//{
#region //Weapon-Catapult Code

if oPlayer.hspd <= -0.1
{
	x = oPlayer.x+48
	y = oPlayer.y
}
else
{
	x = oPlayer.x-48
	y = oPlayer.y
}

//image_angle = clamp(point_direction(x,y,mouse_x,mouse_y),0,360); 

firing_delay = firing_delay - 1;
recoil = max(0, recoil - 1);

if mouse_check_button(mb_right) && (firing_delay < 0)
{
	boulderspeed += 2.5
}

if boulderspeed >= max_boulderspeed {boulderspeed = max_boulderspeed}

if mouse_check_button_released(mb_right) && (firing_delay < 0)
{
	image_index = 1
	recoil = 59;
	firing_delay = 60;
	with (instance_create_layer(x,y,"projectiles_layer",ammo))
	{
		speed = (((oCatapult1.boulderspeed)/10 + (oPlayer.spd)));
	
		direction = (point_direction(x,y,mouse_x,mouse_y) + random_range(-3,3));
		image_angle = direction;
		
		oCatapult1.boulderspeed = 0
	}
}

else
{
	image_index = 0
}
#endregion

if oPlayer.hp <= 0
{
	instance_destroy()
}

//}