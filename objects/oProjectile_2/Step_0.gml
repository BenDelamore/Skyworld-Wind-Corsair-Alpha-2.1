gravity_direction = 270
if place_free(x,y+1)
{
	gravity = 0.075
}
else
{
	gravity = 0
}

//phy_rotation = -point_direction(x, y, phy_speed_x, phy_speed_y)
//image_angle = phy_rotation