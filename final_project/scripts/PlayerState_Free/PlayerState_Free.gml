hSpeed = (keyRight - keyLeft) * walkSpeed;
vSpeed += gravSpeed;

if keyboard_check(ord("9")) x -= 5;
if keyboard_check(ord("0")) x += 5;

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
	jump_count = jump_count_max;
	show_debug_message("Called"+string(grounded))
}
y += vSpeed; // must be under collisions
//hasJumpBoots = true;
//if (keyJump && grounded)
//{
//	jump_count += 1;
//	vSpeed -= jump_amt;
//	if jump_count == jump_count_max
//	{
//		grounded = false;
	//	jump_count = 0;
	//}
//}
if(keyJump && (grounded || jump_count > 0)){
	vSpeed = -jump_amt;
	jump_count--;
	show_debug_message(string(jump_count)+string(grounded));
	grounded = false;
}

if (keyAttack) && attack_timer <= 0
{
	state = PLAYERSTATE.ATTACK_SLASH;
	attack_timer = attack_timer_set;
}
else
{
	attack_timer -= 1;
}
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
		createLeave(x,y,4);
		leaf_timer = 20;
	}
	else
	{
		leaf_timer -= 1;
	}
}