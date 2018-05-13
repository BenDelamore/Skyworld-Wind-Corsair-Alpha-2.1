gravity_direction = 270
if place_free(x,y+1)
{
	gravity = 0.035
}
else
{
	gravity = 0
}

image_xscale = 0.70
image_yscale = 0.70
image_angle = direction


//phy_rotation = -point_direction(x, y, phy_speed_x, phy_speed_y)
//image_angle = phy_rotation