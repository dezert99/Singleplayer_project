hSpeed = 0;
vSpeed = 0;

ProcessAttack(spr_knight_attack_combo_2,spr_knight_attack_combo_2HB);

if (animation_end())
{
	sprite_index = spr_malek_idle;
	state = PLAYERSTATE.FREE;
}
if timer > 0
{
	timer -= 1
}
else
{
	if image_xscale == 1 x += 40;
	if image_xscale == -1 x -= 40;
	timer = 5;
}
