/// @description Insert description here
// You can write your code in this editor
with (other)
{
	hp -= 15
	flash = 3
	
	mode = "knockback"
	knockback_timer = 0
	x += lengthdir_x(3,other.direction)
	y += lengthdir_y(3,other.direction)
}

instance_destroy();