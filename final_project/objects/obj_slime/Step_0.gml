Left = 0;
Right =0;
key_jump = false;
switch (state)
{
	case ENEMYSTATE.FREE: SlimeState_Free(); break;
	case ENEMYSTATE.HIT: EnemyState_Hit(); break;
	case ENEMYSTATE.DEAD: EnemyState_Dead(); break;
	case ENEMYSTATE.CHASING: EnemyState_Chasing(); break;
}