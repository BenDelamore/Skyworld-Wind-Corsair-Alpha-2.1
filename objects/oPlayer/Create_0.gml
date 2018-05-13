//Movement Variables
moveX = 0;
moveY = 0;

hspd = 0;
vspd = 0;

maxhspd = global.maxhspd;
maxvspd = global.maxvspd;

spd = sqrt(hspd*hspd + vspd*vspd)

//Miscellaneous Variables
hp = global.player_health

death_timer = 0

flame_frame = 0

//state = player_states.move

//states_array[player_states.move] = scr_movement_3


//sprites_array[0] = sPlayer


//Creating Weapon hardpoints
if global.Weapon_Ballistae = true {instance_create_layer(x+64,y+2,"weapon_layer",oBallistae1)}

if global.Weapon_Ballistae2 = true {instance_create_layer(x+64,y+2,"weapon_layer",oBallistae2)}

if global.Weapon_Catapult = true {instance_create_layer(x,y+2,"weapon_layer",oCatapult1)}

//Weapon Spot creation
//weapon_spot_1 = instance_create_layer(x+64,y-2,"weapon_layer",global.weapon_1)

//Create Camera
instance_create_layer(x,y,"player_layer",oCameraTarget)

