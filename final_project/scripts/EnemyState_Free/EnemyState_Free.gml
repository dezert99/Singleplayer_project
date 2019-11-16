image_blend = c_white;
if obj_player.x > x 
{
	image_xscale = -1
}
else
{
	image_xscale = 1
}

if (place_meeting(x+hSpeed,y,oWall))
{
	var onePixel = sign(hSpeed);
	while (!place_meeting(x+onePixel,y,oWall)) x += onePixel;
	hSpeed = 0;
}