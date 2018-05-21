 /// @description Insert description here

//Display properties
ideal_width = 1920;
ideal_height = 1080;

display_zoom = 1;
max_zoom = 1;


aspect_ratio = display_get_width()/display_get_height();

//idael_width = round(ideal_height*aspect_ratio);
ideal_height = round(ideal_width/aspect_ratio);

//Check for odd numbers
if (ideal_height & 1)
{
	ideal_height ++;
}

//Calculate max zoom
max_zoom = floor(display_get_width()/ideal_width);


camera = camera_create();

global.view_x = 0;
global.view_y = 0;
global.view_w = 0;
global.view_h = 0;


/*
for (var i=1; i<= room_last; i++)
{
	if (room_exists(i))
	{
		room_set_viewport(i,0,true,0,0,ideal_width,ideal_height)
	}
}
*/

surface_resize(application_surface,ideal_width,ideal_height);
window_set_size(ideal_width,ideal_height);
