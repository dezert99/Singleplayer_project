if (hSpeed > 0){
	hSpeed = 2;
} else {
	hSpeed = -2;
}

vSpeed += grav
image_blend = c_white;

if (place_meeting(x+hSpeed,y,obj_invisible)){
	hSpeed *= -1
}

if (place_meeting(x+hSpeed,y,oWall))
{
	var onePixel = sign(hSpeed);
	while (!place_meeting(x+onePixel,y,oWall)) x += onePixel;
	hSpeed = 0;
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
y += vSpeed; // must be under collisions
x += hSpeed

if (place_meeting(x,y+vSpeed,oWall)){
	var onePixel = sign(vSpeed)
	grounded = false;
}
y += vSpeed
x += hSpeed

if(collision_rectangle(x-150,y,x+150,y-100,obj_player,false,true)){
	state = ENEMYSTATE.CHASING
} else if (state != ENEMYSTATE.DEAD){
	state = ENEMYSTATE.FREE
}


lit();