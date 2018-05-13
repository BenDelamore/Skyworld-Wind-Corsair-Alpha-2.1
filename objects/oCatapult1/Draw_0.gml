
if global.Weapon_Catapult = true
{
	draw_self()
}

image_speed = 0

if mouse_check_button(mb_right)
{
	var spd
	spd = boulderspeed
	draw_healthbar(oPlayer.x-10,oPlayer.y+20,oPlayer.x+20,oPlayer.y+25,spd,0,c_white,c_red,0,0,0)
}

if firing_delay >= 1
{
	image_index = 1
}
else
{
	image_index = 0
}



//draw_line(x,y,mouse_x,mouse_y)
