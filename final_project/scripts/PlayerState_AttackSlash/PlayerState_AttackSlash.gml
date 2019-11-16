hSpeed = 0;
vSpeed = 0;

ProcessAttack(spr_slash,spr_slash_HB);

if (keyAttack) && (image_index > 1)
{	
	state = PLAYERSTATE.ATTACK_COMBO;	
}

if (animation_end())
{
	sprite_index = spr_malek_idle;
	state = PLAYERSTATE.FREE;
}