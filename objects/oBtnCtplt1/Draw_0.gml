/// @description Insert description here
// You can write your code in this editor

image_speed = 0;



draw_self()

if hover = true && global.catapult_ammo != oProjectile_explosive
{
	image_index = 0;
	//alpha += 0.1
}
else if global.catapult_ammo = oProjectile_Boulder
{
	image_index = 1
	//alpha -= 0.1
}
else if global.catapult_ammo = oProjectile_explosive
{
	image_index = 2
}
else
{
	image_index = 3;
	//alpha -= 0.1
}

//if alpha > 0
//{
//	draw_set_alpha(alpha)
//	draw_sprite(sBtnCtplt,0,x,y)
//}

//draw_set_alpha(1)

/*
if hover = true
{
	image_index = 0
}
else
{
	image_index = 1
}

if button_pressed = true
{
	image_index = 2
}

draw_self()