///Description Timer

timer -= 1

if timer <= 0 
{
	part_system_destroy(trail)
	instance_destroy()
}