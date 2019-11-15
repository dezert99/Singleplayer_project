keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
keyAttack = keyboard_check_pressed(ord("H"));

switch (state)
{
	case PLAYERSTATE.FREE: PlayerState_Free(); break;
	case PLAYERSTATE.ATTACK_SLASH: PlayerState_AttackSlash(); break;
	case PLAYERSTATE.ATTACK_COMBO: PlayerState_AttackCombo();break;
}

