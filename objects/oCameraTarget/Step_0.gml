/// @description Camera Border control thingy

//Finally a border control!!!! ...That isn't working properly????
var camera = camera_get_active()

var cam_width = (camera_get_view_width(camera)/2)
var cam_height = (camera_get_view_height(camera)/2)

x = lerp(x,oPlayer.x,0.1)
y = lerp(y,oPlayer.y,0.1)

x = clamp(x,cam_width,room_width-(cam_width))
y = clamp(y,cam_height,room_height-(cam_height))

/*
//Zoom view
var zoom_speed = 0.1;
view_zoom += ev_mouse_wheel_up*zoom_speed
view_zoom -= ev_mouse_wheel_down*zoom_speed

view_zoom = clamp(view_zoom,1,view_max_zoom);

viewW = oDisplay_manager.ideal_width/view_zoom;
viewH = oDisplay_manager.ideal_height/view_zoom;
