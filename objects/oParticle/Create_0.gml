/// @description Code from class tutorial

//-----------Create particle system
//create particle system
system = part_system_create()
//create emitter
emitter = part_emitter_create(system)
//set emitter region
part_emitter_region(system,emitter,x-32,x+32,y-32,y+32,ps_shape_ellipse,ps_distr_gaussian)
//create particle
part = part_type_create()
	
	//create particle effect
	part_type_speed(part,4,5,-0.01,0)
	part_type_direction(part,0,360,0,0.3)
	part_type_life(part,200,205)
	part_type_alpha3(part,0,1,0)
	//part_type_sprite(part,sWind,1,true,true)
	part_type_shape(part,pt_shape_cloud) 
	part_type_orientation(part,0,0,0,0,true)
	part_type_size(part,0.05,0.1,0,0)
	//part_type_scale(part,1,2)
	part_type_color2(part,make_color_rgb(255,255,255),make_color_rgb(255,255,255))
	part_type_blend(part,1)

//part_emitter_stream(system,emitter,part,-20)

part_emitter_burst(system,emitter,part,50)

timer = 50


