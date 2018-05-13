#region //Old AI code
/*
//states
state = states.idle

states_array[states.idle] = scr_idle
states_array[states.wander] = scr_wander
states_array[states.alert] = scr_alert
states_array[states.attack] = scr_attack_2
states_array[states.collision] = scr_enemy_collisiondetection

//movement
counter = 0

spd = 0.5

my_dir = irandom_range(0,360)
moveX = lengthdir_x(spd, my_dir)
moveY = lengthdir_y(spd, my_dir)

//health
hp = 100

Enemy_firingdelay = 10

timer = 4
*/

//other enemy AI code

#endregion

hp = 100

dir = 0
spd = 2 + random(2)

maxspd = 2 + random(2)

//Bullet Timer
bullet_timer = 0

//Enemy Hit visual feedback
knockback_timer = 1
flash = 0

//Timer/Death
death_timer = 0 //(sprite_get_number(sExplosion) * 5)
flame_frame = 0

//Detection circle for music
detection_circle = 1200
detection = 0

mp_potential_settings(90,15,5,1)

//Initialise Path??
set_path = noone
if set_path != noone
{
	path_start(set_path,spd,path_action_continue,false)
	mode = "patrol"
}
else
{
	//Mode/state
	mode = "wander"
}

counter = 0

move_wander = 0

//x = instance_position()

start_x = x
start_y = y

/*
x = start_x
y = start_y

player_x = oPlayer.x;
player_y = oPlayer.y;
