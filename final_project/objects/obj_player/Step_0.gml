keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyJump = keyboard_check_pressed(vk_space);
keyAttack = keyboard_check_pressed(ord("H"));
keyMenu = keyboard_check_pressed(vk_tab);

switch (state)
{
	case PLAYERSTATE.FREE: PlayerState_Free(); break;
	case PLAYERSTATE.ATTACK_SLASH: PlayerState_AttackSlash(); break;
	case PLAYERSTATE.ATTACK_COMBO: PlayerState_AttackCombo();break;
	case PLAYERSTATE.ATTACK_TRIPLE: PlayerState_AttackTriple();break;
	case PLAYERSTATE.DEATH: PlayerState_Death(); break;
	case PLAYERSTATE.MENU: PlayerState_Menu(); break;
}
