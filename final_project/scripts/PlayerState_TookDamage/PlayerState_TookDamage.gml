vSpeed += gravSpeed
hit_timer -= 1
image_blend = c_red;
if hit_timer < 5 flash = false;
if (hit_direction == 1)
{
	hSpeed = 16;
}
else
{
	hSpeed = -16;
}
if hit_timer > 7 vSpeed -= 10
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
y += vSpeed; // must be under collisions
if (hit_timer < 0)
{
	hit_timer = 0;
	state = PLAYERSTATE.FREE;
}