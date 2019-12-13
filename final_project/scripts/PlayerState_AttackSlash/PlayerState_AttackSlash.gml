hSpeed = (keyRight - keyLeft) * walkSpeed/2;
vSpeed = 0;
fric = 0;
if !sword_sound 
{
	audio_play_sound(sword_2_real,1,false);
	sword_sound = true;
}
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
	sword_sound = false;
	attack_timer = attack_timer_set;
}

if (animation_end())
{
	sword_sound = false;
	sprite_index = spr_malek_idle;
	state = PLAYERSTATE.FREE;
}