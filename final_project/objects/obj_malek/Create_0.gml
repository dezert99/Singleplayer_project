hSpeed = 0;
vSpeed = 0;
gravSpeed = 0.4;
walkSpeed = 8;

grounded=false;

jump_amt = 7;

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();

enum PLAYERSTATE
{
	FREE,
	ATTACK_SLASH,
	ATTACK_COMBO
}

