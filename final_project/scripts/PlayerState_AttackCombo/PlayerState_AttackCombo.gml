hSpeed = 0;
vSpeed = 0;
if !sword_sound 
{
	audio_play_sound(sword_2_real,1,false);
	sword_sound = true;
}
ProcessAttack(spr_knight_attack_combo_1,spr_knight_attack_combo_1HB);

if (keyAttack) && (image_index > 3)
{	
	state = PLAYERSTATE.ATTACK_TRIPLE;
	sword_sound = false;
	attack_timer = attack_timer_set;
}

if (animation_end())
{
	sword_sound = false;
	sprite_index = spr_malek_idle;
	state = PLAYERSTATE.FREE;
}