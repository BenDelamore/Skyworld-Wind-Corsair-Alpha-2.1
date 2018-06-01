
if place_free(x,y+1)
{
	gravity = grav
}
else
{
	gravity = 0
}


image_xscale = 0.70
image_yscale = 0.70
image_angle = direction

instance_create_layer(x,y,"projectiles_layer",oParticle_trail)
//part_emitter_burst(trail,trail_emitter,trail_part,5)


