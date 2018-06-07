/// @description Insert description here
// You can write your code in this editor

//Player variables
global.max_hp = 100;
global.hp = 100;
global.player_health = 200;

global.playerpoints = 0;
global.coins_collected = 0;

global.maxhspd = 4.5;
global.maxvspd = 4.5;

global.spawnX = 0
global.spawnY = 1300

//Weapons 1
global.Weapon_Ballistae = true;
global.Weapon_Catapult = false;
global.Weapon_Ballistae2 = false;

//Weapons 2 for upgrade system
global.weapon_1 = global.Weapon_Ballistae;
global.weapon_2 = false;

global.catapult_ammo = false

//Current level
global.room_number = room_level0;

global.level_unlocked = room_level0

//Room edge
global.edge = 400;

//Pause
global.pause = false;

window_set_fullscreen(true);
