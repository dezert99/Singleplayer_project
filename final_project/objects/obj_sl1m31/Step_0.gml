Left = 0;
Right = 0;
key_jump = false;
//keyAttack = keyboard_check_pressed(ord("H"));

switch (state)
{
	case SLIMESTATE.FREE: SlimeState_Free(); break;
	case SLIMESTATE.HIT: EnemyState_Hit(); break;
	case SLIMESTATE.DEAD: EnemyState_Dead(); break;
	//case PLAYERSTATE.ATTACK_COMBO: PlayerState_Attack_Combo();break;
}

