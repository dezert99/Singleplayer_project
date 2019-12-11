vSpeed += grav
hit_timer -= 1
image_blend = c_red;
if hit_timer < 5 flash = false;
if obj_player.x > x
{
	hSpeed = -20;
}
else
{
	hSpeed = 20;
}
if hit_timer > 7 vSpeed -= 4
if (place_meeting(x+hSpeed,y,oWall))
{
	var onePixel = sign(hSpeed);
	while (!place_meeting(x+onePixel,y,oWall)) x += onePixel;
	hSpeed = 0;
}
x += hSpeed;
if (place_meeting(x,y+vSpeed,oWall))
{
	var onePixel = sign(vSpeed);
	while (!place_meeting(x,y+onePixel,oWall)) y += onePixel;
	vSpeed = 0;
	grounded = true;
}
else
{
	grounded = false;
}
y += vSpeed;
if (hit_timer == 0)
{
	state = ENEMYSTATE.FREE;
}