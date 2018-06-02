/// @description Draw MP_Grid for DEBUGGING
/*

draw_set_alpha(0.1);

mp_grid_draw(global.ai_grid);

/*
for (var i = 0; i < room_width; i += 32;)
{
	draw_line(i, 0, i, room_height);	
}

for (i = 0; i < room_height; i += 32;)
{
	draw_line(0, i, room_width, i);
}
*/
draw_set_alpha(1);

/*
if instance_exists(oEnemy)
{
	if path_exists(oEnemy.path)
	{
		draw_path(oEnemy.path,x,y,true);
	}
}
