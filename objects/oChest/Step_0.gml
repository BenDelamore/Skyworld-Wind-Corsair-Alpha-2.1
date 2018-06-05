/// @description Insert description here
// You can write your code in this editor
if hp > 0
{
image_index = 0
image_speed = 0
//image_xscale = 0.5
//image_yscale = 0.5
}

if hp <= 0 and timer = 1
{
	image_index = 1
	//image_xscale = 0.5
	//image_yscale = 0.5
	repeat random_range(5,15)
	{
		instance_create_layer(x,y,"projectiles_layer",oCoin)
	}
	timer = 0
}