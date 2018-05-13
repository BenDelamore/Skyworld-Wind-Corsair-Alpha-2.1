if (place_meeting(x,y,oSolid)) 
{
	
	instance_destroy();
}

if (place_meeting(x,y,oPlayer)) 
{
	oPlayer.hp -= 5
	instance_destroy();
}