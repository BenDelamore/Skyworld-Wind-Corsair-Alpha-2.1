/// @description Insert description here
// You can write your code in this editor

if (global.pause) {exit;}

other.hp -= 5
hp -= 5

dir = point_direction(oPlayer.x,oPlayer.y,x,y)

spd = 10

x += lengthdir_x(spd,dir)
y += lengthdir_y(spd,dir)

oCameraTarget.shake = 5