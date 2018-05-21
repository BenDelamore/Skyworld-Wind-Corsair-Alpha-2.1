/// @description 

//Follow Player
view_x = oPlayer.x - global.view_w/2;
view_y = oPlayer.y - global.view_h/2;

view_x = clamp(view_x,global.view_w,room_width-global.view_w)
view_y = clamp(view_y,global.view_h,room_height-global.view_h)


camera_set_view_size(view_camera[0],global.view_w,global.view_h);
camera_set_view_pos(view_camera[0],view_x,view_y)
