////movement////
hSpeed = 0;
vSpeed = 0;
gravSpeed = 1.6;
walkSpeed = 14;

grounded = false;

jump_amt = 40;
//////////////

state = PLAYERSTATE.FREE;
enum PLAYERSTATE
{
	FREE,
	ATTACK_SLASH,
	ATTACK_COMBO,
	DEATH,
	MENU
}

hitByAttack = ds_list_create();
base_damage = 5;
rand = 0;
crit_rand = 0;
crit_chance = 0;

//depth = 3;