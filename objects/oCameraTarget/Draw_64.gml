/// @description Coin and health Display UI

draw_set_font(fnt_health)
draw_set_halign(fa_left)
draw_set_color(c_red)
draw_text(25,25,oPlayer.hp)

draw_healthbar(50,20,150,30,oPlayer.hp,0,c_red,c_green,0,0,0)

draw_set_halign(fa_left)
draw_text(25,50,(string("COINS	 =	 ") + string(global.playerpoints)))
