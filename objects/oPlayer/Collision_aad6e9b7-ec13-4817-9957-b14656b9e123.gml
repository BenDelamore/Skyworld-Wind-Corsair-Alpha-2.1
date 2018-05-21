/// @description Insert description here
// You can write your code in this editor

hp += other.hp
if hp > global.player_health {hp = global.player_health}

with (other)
{
	instance_create_layer(x,y,"projectiles_layer",oParticle)
	instance_destroy()
}