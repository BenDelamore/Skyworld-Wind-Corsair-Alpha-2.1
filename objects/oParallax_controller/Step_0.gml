/// @description Parallax

//var cam = view_camera[0]
//var lay_id = layer_get_id("Backgrounds_1")

var _xpos = camera_get_view_x(cam)/(room_width-camera_get_view_width(cam));
var _ypos = camera_get_view_y(cam)/(room_height-camera_get_view_height(cam));

//layer_x(lay_id,camera_get_view_x(cam)*0.75)
//layer_y(lay_id,camera_get_view_y(cam)*0.75)

layer_x(lay_id,(lerp(0,(room_width-4096), _xpos)))
layer_y(lay_id,(lerp(0,(room_height-1365), _ypos)))

//(lerp(0,(room_width-4096), _xpos))
//(lerp(0,(room_height-1365), _ypos))

//Layer 2
//add margins using var hmargin = 200 (etc)

//Parallax particle system - clouds?
part_system_position(oParticle_Background_Clouds_1.clouds,(lerp(0+500,(room_width-4096)-500, _xpos)),(lerp(0+200,(room_height-1365)-200, _ypos)))
