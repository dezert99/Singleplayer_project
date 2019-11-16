var _damage = argument0;
damage_taken = _damage;
hp -= _damage;
flash = true;
if (hp > 0)
{
	state = ENEMYSTATE.HIT;
	hit_timer = hit_timer_set;
	hitNow = true;
}
else
{
	state = ENEMYSTATE.DEAD;
}