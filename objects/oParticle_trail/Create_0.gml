/// @description trail particle system

//-----------Create particle system
//create particle system
trail = part_system_create()
//create emitter
trail_emitter = part_emitter_create(trail)
//set emitter region
part_emitter_region(trail,trail_emitter,x-2,x+2,y-2,y+2,ps_shape_ellipse,ps_distr_gaussian)
//create particle
trail_part = part_type_create()
	
	//create particle effect
	part_type_speed(trail_part,0,0,0,0)
	part_type_direction(trail_part,0,0,0,0)
	part_type_life(trail_part,20,20)
	part_type_alpha2(trail_part,1,0)
	//part_type_sprite(part,sWind,1,true,true)
	part_type_shape(trail_part,pt_shape_pixel) 
	part_type_orientation(trail_part,0,0,0,0,true)
	part_type_size(trail_part,1,1.5,-0.1,0)
	//part_type_scale(part,1,2)
	part_type_color1(trail_part,c_white)
	//part_type_color2(part,make_color_rgb(255,255,255),make_color_rgb(255,255,255))
	part_type_blend(trail_part,1)

//part_emitter_stream(system,emitter,part,-20)

part_emitter_burst(trail,trail_emitter,trail_part,15)

timer = 25


