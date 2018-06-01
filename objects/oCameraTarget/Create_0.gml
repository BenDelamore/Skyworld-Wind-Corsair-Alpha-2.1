/// @description Initialise variables

mode = 0;

moveX = (x = lerp(x,oPlayer.x,0.1));
moveY = (y = lerp(y,oPlayer.y,0.1));

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

view_zoom = 1;
view_max_zoom = 10;

shake = 0;
shake_decay = 0.9;