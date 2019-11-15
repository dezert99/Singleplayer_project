hSpeed = (keyRight - keyLeft) * walkSpeed;
vSpeed = vSpeed + gravSpeed;

//hor collision//
if (place_meeting(x+hSpeed,y,oWall))
{
	var onePixel = sign(hSpeed);
	while (!place_meeting(x+onePixel,y,oWall)) x += onePixel;
	hSpeed = 0;
}
x += hSpeed;
//sprite changes//
if (hSpeed != 0)
{
	image_xscale = sign(hSpeed);
	sprite_index = spr_malek_imp;
}
else
{
	sprite_index = spr_malek_idle;	
}

//vert collision//
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

if (keyJump && grounded)
{
	grounded = false;
	vSpeed -= jump_amt;
}

if (keyAttack) state = PLAYERSTATE.ATTACK_SLASH;
