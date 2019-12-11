switch (state)
{
	case ENEMYSTATE.FREE: EnemyState_Free(); break;
	case ENEMYSTATE.HIT: EnemyState_Hit(); break;
	case ENEMYSTATE.DEAD: EnemyState_Dead(); break;
	case ENEMYSTATE.CHASING: EnemyState_Chasing(); break;
}