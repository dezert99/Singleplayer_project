////Movement////
vSpeed += gravSpeed;
if (hit_timer > 9) vSpeed -= jump_amt/2 //so the jump is only applied for one frame//
if (hit_direction == 1)
{
	hSpeed = 20;
}
else
{
	hSpeed = -20;
}
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
//////////////
////FLASH////
if hit_timer > 5 
{
	image_blend = c_red;
}
else
{
	image_blend = c_white;
}
////////
if (hit_timer <= 0)
{
	state = PLAYERSTATE.FREE;
	invincible = true;
}
hit_timer -= 1;