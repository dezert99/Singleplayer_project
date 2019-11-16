base_damage = 5;
rand = irandom_range(-2,2)
crit_rand = irandom_range(1,4);
crit_chance = irandom_range(0,9);

if crit_chance == 1
{
	base_damage += crit_rand;

}
else
{
	base_damage += rand;
}
return base_damage;

