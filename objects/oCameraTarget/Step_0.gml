/// @description Insert description here

//Finally a border control!!!! ...That isn't working properly????
var camera = camera_get_active()

display_get_width()

var cam_width = (camera_get_view_width(camera)/2)
var cam_height = (camera_get_view_height(camera)/2)

x = lerp(x,oPlayer.x,0.1)
y = lerp(y,oPlayer.y,0.1)

x = clamp(x,cam_width,room_width-(cam_width))
y = clamp(y,cam_height,room_height-(cam_height))
