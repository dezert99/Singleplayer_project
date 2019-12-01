hSpeed = 0;
vSpeed = 0;

ProcessAttack(spr_knight_attack_combo_1,spr_knight_attack_combo_1HB);

if (keyAttack) && (image_index > 3)
{	
	state = PLAYERSTATE.ATTACK_TRIPLE;	
}

if (animation_end())
{
	sprite_index = spr_malek_idle;
	state = PLAYERSTATE.FREE;
}