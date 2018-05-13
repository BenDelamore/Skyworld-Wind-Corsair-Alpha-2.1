/// @description Insert description here
// You can write your code in this editor

timer -= 1

if timer <= 0 
{
	part_system_destroy(system)
	instance_destroy()
}