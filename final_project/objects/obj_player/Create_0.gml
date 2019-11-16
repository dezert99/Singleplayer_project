hSpeed = 0;
vSpeed = 0;
gravSpeed = 1;
walkSpeed = 8;

grounded = false;

jump_amt = 15;

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();

////get layers////
farthest_layer = layer_background_get_id("farthest");
far_layer = layer_background_get_id("far");
close_layer = layer_background_get_id("close");

enum PLAYERSTATE
{
	FREE,
	ATTACK_SLASH,
	ATTACK_COMBO,
	DEATH
}

base_damage = 5;
rand = 0;
crit_rand = 0;
crit_chance = 0;