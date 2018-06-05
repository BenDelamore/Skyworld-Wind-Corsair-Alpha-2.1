/*
draw_set_alpha(0.2)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_font(fnt_health)
draw_set_colour(c_white)

var m;
for (m = 0; m < array_length_1d(menu); m += 1)
{
	draw_text(x + space, y + (m*space), string(menu[m]))
}
*/
/*
switch move_position
{
	case 0: {	if oButton.button = move_position {x = other.x-150; y = other.y;}
	case 1: {	if oButton.button = move_position {x = other.x-150; y = other.y;}
	case 2: {	if oButton.button = move_position {x = other.x-150; y = other.y;}
	case 3: {	if oButton.button = move_position {x = other.x-150; y = other.y;}
	case 4: {	if oButton.button = move_position {x = other.x-150; y = other.y;}
	case 5: {	if oButton.button = move_position {x = other.x-150; y = other.y;}
//	case 6: {	draw_sprite(sButton_Level_1,image_index,x,y)}
//	case 7: {	draw_sprite(sButton_Level_2,image_index,x,y)}
//	case 8: {	draw_sprite(sButton_Level_3,image_index,x,y)}	
}	
*/
if oButton.button = move_position {x = other.x-150; y = other.y;}


draw_sprite(sprite_index, 0, x, y)// + move_position * space)

//draw_set_alpha(1)