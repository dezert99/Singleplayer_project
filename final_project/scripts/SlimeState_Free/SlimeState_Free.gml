player_invincible = obj_player.invincible;
if collision_rectangle(x-400,y,x+400,y-100,obj_player,false,false)
{
	chase = true;
}
if chase
{
	if obj_player.x < x
	{
		sprite_index = spr_slime_left;
		Right = 0;
		Left = 1;
	}
	else if obj_player.x > x
	{
		sprite_index = spr_slime;
		Right = 1;
		Left = 0;
	}
	key_jump = true;
}
hSpeed = (Right - Left) * walkSpeed;

//hor collision
if (place_meeting(x+hSpeed,y,oWall))
{
	var onePixel = sign(hSpeed);
	while (!place_meeting(x+onePixel,y,oWall)) x += onePixel;
	hSpeed = 0;
}
x += hSpeed;

//vert collision
if (place_meeting(x,y+vSpeed,oWall))
{
	grounded = true;
	var onePixel = sign(vSpeed);
	while (!place_meeting(x,y+onePixel,oWall)) y += onePixel;
	image_xscale += vSpeed / 100;
	image_yscale -= vSpeed / 100;
	vSpeed = 0;
}
else
{
	grounded = false;
	vSpeed += grav;
}
y += vSpeed;
if (grounded and ! key_jump)
{
	//if image_xscale < 4 image_xscale += 0.002
	//if image_yscale > 0.1 image_yscale -= 0.002
}
if key_jump and grounded
{
	image_xscale -= 0.05
	image_yscale += 0.05
	if (image_xscale <= 1 and image_yscale >= 1)
	{
		vSpeed -= jump_amt
		image_xscale = lerp(0.8,1,0.2); 
		image_yscale = lerp(1.6,1,0.2);
		grounded = false;
	}
	
}
if vSpeed > 1
{
	image_xscale = lerp(1,0.8,0.2); 
	image_yscale = lerp(1,1.6,0.2);
}

if(place_meeting(x+hSpeed,y,obj_player) && !player_invincible)
{
	obj_player.player_damage_taken = base_damage;
	obj_player.state = PLAYERSTATE.TOOK_DAMAGE;
	if sprite_index == baby_slime_left obj_player.hit_direction = -1;
	if sprite_index == baby_slime_right obj_player.hit_direction = 1;
	hSpeed = 0;
}
//if (keyAttack) state = PLAYERSTATE.ATTACK_SLASH;
