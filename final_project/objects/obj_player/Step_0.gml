keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyJump = keyboard_check_pressed(ord("H"));
keyAttack = keyboard_check_pressed(ord("J"));
keyMenu = keyboard_check_pressed(vk_shift);

//This needs to superseed any state except death or menu
if(invincible)
{
	hit_timer = hit_timer_set;
	if invincibility_timer <= 0
	{
		invincible = false;
	}
	else 
	{
		invincibility_timer -= 1;
	}
	if (invincibility_timer % 20 == 0 )
	{
		image_alpha = 1;
	}
	else if (invincibility_timer % 10 == 0 && invincibility_timer > 0)
	{
		image_alpha = 0.6;
	}
}
else
{
	invincibility_timer = invincibility_timer_max;
}
switch (state)
{
	case PLAYERSTATE.FREE: PlayerState_Free(); break;
	case PLAYERSTATE.ATTACK_SLASH: PlayerState_AttackSlash(); break;
	case PLAYERSTATE.ATTACK_COMBO: PlayerState_AttackCombo();break;
	case PLAYERSTATE.ATTACK_TRIPLE: PlayerState_AttackTriple();break;
	case PLAYERSTATE.DEATH: PlayerState_Death(); break;
	case PLAYERSTATE.MENU: PlayerState_Menu(); break;
	case PLAYERSTATE.TOOK_DAMAGE: PlayerState_TookDamage(); break;
}
