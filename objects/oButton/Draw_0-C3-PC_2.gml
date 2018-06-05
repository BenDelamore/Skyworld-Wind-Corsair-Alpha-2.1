/// @description Insert description here
// You can write your code in this editor

image_speed = 0;

if hover = true 
{
	image_index = 1;
}
else 
{
	image_index = 0;
}

if button_pressed = true 
{
	image_index = 2;
}

switch (button_number[button])
{
	case 0: {	draw_sprite(sButton_Start,image_index,x,y)}
	case 1: {	draw_sprite(sButton_Continue,image_index,x,y)}
	case 2: {	draw_sprite(sButton_Upgrades,image_index,x,y)}
	case 3: {	draw_sprite(sButton_Level_select,image_index,x,y)}
	case 4: {	draw_sprite(sButton_Exit,image_index,x,y)}
	case 5: {	draw_sprite(sButton_Main_menu,image_index,x,y)}
//	case 6: {	draw_sprite(sButton_Level_1,image_index,x,y)}
//	case 7: {	draw_sprite(sButton_Level_2,image_index,x,y)}
//	case 8: {	draw_sprite(sButton_Level_3,image_index,x,y)}
}


/*
if button_pressed = true
{
	draw_set_halign(fa_center)
	draw_text(x,y-30,"Button Pressed")
}

if hover = true
{
	image_alpha = 0.5
}
else
{
	image_alpha = 1
}

draw_self()