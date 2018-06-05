/// @description ALL THE CODE!!

if (global.pause) {exit;}

script_execute(states_array[state]);

if Enemy_firingdelay > 0 {Enemy_firingdelay -= 1}

#region //knockback mode
if mode = "knockback"
{
	if knockback_timer >= 1
	{
		mode = "chase"
	}
	
	knockback_timer += 1
}
#endregion

#region //Room Borders
/*
x = max(x, global.edge);
x = min(x, room_width-global.edge);
y = max(y, global.edge);
y = min(y, room_height-global.edge);
*/

var edgespeed1 = (distance_to_point(global.edge,y))/1000
var edgespeed2 = (distance_to_point(x,global.edge))/1000
var edgespeed3 = (distance_to_point(room_width - global.edge,y))/1000
var edgespeed4 = (distance_to_point(x,room_height - global.edge))/1000

if x < global.edge
	{
		spd += max(0,(edgespeed1/5))
		x += lengthdir_x(spd,point_direction(x,y,global.edge,y))
	}
	
if x > room_width - global.edge
	{
		spd += max(0,(edgespeed3/5))
		x += lengthdir_x(spd,point_direction(x,y,(room_width-global.edge),y))
	}

//abs(sign(vspd))+

if y < global.edge
	{
		spd += max(0,(edgespeed2/5))
		y += lengthdir_y(spd,point_direction(x,y,x,global.edge))
	}

if y > room_height - global.edge
	{
		spd += max(0,(edgespeed4/5))
		y += lengthdir_y(spd,point_direction(x,y,x,(room_height-global.edge)))
	}

#endregion

#region //health drop
if oPlayer.hp < 50 && spawn_health_timer < 1
{
	spawn_health = choose(true,false)
}

if oPlayer.hp < 15 {spawn_health = true}
#endregion

#region //death
if hp <= 0
{
	bullet_timer = -1000
	flame_frame += 0.2
	
	
	if spawn_health = true
	{
		instance_create_layer(x,y,"player_layer",oHealth_Drop)
		spawn_health = false
	}
	
	/*
	flame_frame = clamp(flame_frame,0,sprite_get_number(sExplosion)) 	
	repeat random(10)
	{
		instance_create_layer(x,y,"projectiles_layer",oSpark)
	}
	*/
	if flame_frame <= 0.4
	{
		repeat random(4)
		{
			instance_create_layer(x,y,"projectiles_layer",oCoin)
		}
	}
	//Explosion Code!!!	
	if death_timer <= 1
	{
		with instance_create_layer(x,y,"projectiles_layer",oExplosion)
		{
			image_angle = random_range(0,360)
			image_speed = 1
		}
	}
	image_alpha -= 0.25	

	death_timer += 1	
	if death_timer >= 2 //(sprite_get_number(sExplosion) * 5)
	{
		instance_destroy()
	}
}
#endregion
