image_angle = 90;
image_speed = 0;
image_blend = c_dkgray;
vSpeed += grav;
if(!gave_gold){
	gave_gold = true;
	gold += gold_drop + choose(-2,-1,0,1,2);
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