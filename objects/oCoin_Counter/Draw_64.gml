/// @description Insert description here
// You can write your code in this editor

var _x = oController.guiWidth - 60
var _y = 50

draw_sprite(sCoin_Counter,image_index,_x,_y)

draw_set_halign(fa_center)
draw_set_color(c_white)
draw_set_font(fnt_Unzialish)
draw_text(_x,_y,global.coins_collected)
