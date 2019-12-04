hSpeed = (keyRight - keyLeft) * walkSpeed;
vSpeed = vSpeed + gravSpeed;
lit();
//hor collision//
if (place_meeting(x+hSpeed,y,oWall))
{
	var onePixel = sign(hSpeed);
	while (!place_meeting(x+onePixel,y,oWall)) x += onePixel;
	hSpeed = 0;
}
x += hSpeed;
//sprite changes//
if (hSpeed != 0) and grounded
{
	image_xscale = sign(hSpeed);
	sprite_index = spr_knight_run;
}
else if !grounded
{
	sprite_index = spr_knight_jump;
	if animation_end() 
	{
		//image_speed = 0;
	}
	if vSpeed > 0 sprite_index = spr_knight_fall
}
else
{
	sprite_index = spr_knight_idle;	
	image_speed = 1;
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
if (keyMenu) 
{
	var center_x = camera_x + halfViewWidth;
	var center_y = camera_y + halfViewHeight;
	instance_create_layer(center_x,center_y,"UI",obj_dark)

	state = PLAYERSTATE.MENU;
}

if place_meeting(x,y,obj_bush1) and hSpeed != 0
{
	if leaf_timer <= 0
	{
		createLeaves(x,y,4);
		leaf_timer = 20;
	}
	else
	{
		leaf_timer -= 1;
	}
}