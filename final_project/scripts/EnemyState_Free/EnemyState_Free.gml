vSpeed += grav
image_blend = c_white;

if (place_meeting(x+hSpeed,y,obj_invisible))
{
	hSpeed *= -1
	image_xscale = sign(hSpeed);
}

if (place_meeting(x+hSpeed,y,oWall))
{
	var onePixel = sign(hSpeed);
	while (!place_meeting(x+onePixel,y,oWall)) x += onePixel;
	hSpeed *= -1;
}

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
x += hSpeed;

if(collision_rectangle(x-350,y,x+350,y-100,obj_player,false,false))
{
	state = ENEMYSTATE.CHASING
}
else if (state != ENEMYSTATE.DEAD)
{
	state = ENEMYSTATE.FREE
}