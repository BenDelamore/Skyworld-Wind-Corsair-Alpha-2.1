/// @description Insert description here
// You can write your code in this editor

if point_in_circle(mouse_x, mouse_y, x, y, 32)
{
	over = true;

	if mouse_check_button_pressed(mb_left)
	{room_goto(room_level1)}
}
else
{
	over = false;
}
