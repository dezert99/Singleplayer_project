hSpeed = (keyRight - keyLeft) * walkSpeed/2;
vSpeed = 0;
fric = 0;

ProcessAttack(spr_knight_attack,spr_knight_attackHB);

if (place_meeting(x+hSpeed,y,oWall))
{
	var onePixel = sign(hSpeed);
	while (!place_meeting(x+onePixel,y,oWall)) x += onePixel;
	hSpeed = 0;
}
x += hSpeed;

if (keyAttack) && (image_index > 3)
{	
	state = PLAYERSTATE.ATTACK_COMBO;
	attack_timer = attack_timer_set;
}

if (animation_end())
{
	sprite_index = spr_malek_idle;
	state = PLAYERSTATE.FREE;
}