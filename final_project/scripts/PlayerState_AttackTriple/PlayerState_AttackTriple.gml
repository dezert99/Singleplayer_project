hSpeed = 20;
vSpeed = 0;

ProcessAttack(spr_knight_attack_combo_2,spr_knight_attack_combo_2HB);

if (animation_end())
{
	sprite_index = spr_malek_idle;
	state = PLAYERSTATE.FREE;
}
if image_xscale == 1 x += hSpeed;
if image_xscale == -1 x -= hSpeed;
hSpeed -= 0.4;

if timer > 0
{
	timer -= 1
}
else
{
	
	//timer = 5;
}
