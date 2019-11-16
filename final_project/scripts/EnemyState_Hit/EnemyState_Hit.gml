hit_timer -= 1
image_blend = c_red;
if hit_timer < 5 flash = false;
if (image_xscale == 1)
{
	hSpeed = 10;
}
else
{
	hSpeed = -10;
}
if (place_meeting(x+hSpeed,y,oWall))
{
	var onePixel = sign(hSpeed);
	while (!place_meeting(x+onePixel,y,oWall)) x += onePixel;
	hSpeed = 0;
}
x += hSpeed;
if (hit_timer == 0)
{
	state = ENEMYSTATE.FREE;
}