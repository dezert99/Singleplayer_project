////movement////
hSpeed = 0;
vSpeed = 0;
gravSpeed = 1;
walkSpeed = 8;

grounded = false;

jump_amt = 15;
//////////////

state = PLAYERSTATE.FREE;
enum PLAYERSTATE
{
	FREE,
	ATTACK_SLASH,
	ATTACK_COMBO,
	DEATH
}

hitByAttack = ds_list_create();
base_damage = 5;
rand = 0;
crit_rand = 0;
crit_chance = 0;
