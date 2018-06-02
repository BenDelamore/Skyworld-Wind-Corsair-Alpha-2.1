/// @description Coin and health Display UI

draw_set_font(fnt_health)
draw_set_halign(fa_left)
draw_set_color(c_red)
draw_text(35,35,oPlayer.hp)

draw_healthbar(50,30,150,40,oPlayer.hp,0,c_red,c_green,0,0,0)

draw_set_halign(fa_left)
draw_text(55,35,(string("COINS	 =	 ") + string(global.playerpoints)))
