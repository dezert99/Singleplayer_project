hSpeed = (keyRight - keyLeft) * walkSpeed;
vSpeed = 0;

ProcessAttack(spr_knight_attack,spr_knight_attackHB);

if (keyAttack) && (image_index > 4)
{	
	state = PLAYERSTATE.ATTACK_COMBO;	
}

if (animation_end())
{
	sprite_index = spr_malek_idle;
	state = PLAYERSTATE.FREE;
}