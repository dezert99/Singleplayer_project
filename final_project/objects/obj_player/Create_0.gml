////movement////
hSpeed = 0;
vSpeed = 0;
gravSpeed = 1.6;
walkSpeed = 12;
grounded = false;
jump_amt = 28;
fric = 0;
jump_count = 0;
jump_count_max = 1;
//////////////

//////////////
hitNow = false;
flash = false;
hit_timer = 0;
hit_timer_set = 10;
hit_direction = 0;
attack_timer = 0;
attack_timer_set = 12;
//////////////

leaf_timer = 0;

state = PLAYERSTATE.FREE;
enum PLAYERSTATE
{
	FREE,
	ATTACK_SLASH,
	ATTACK_COMBO,
	ATTACK_TRIPLE,
	DEATH,
	MENU,
	TOOK_DAMAGE,
	FROZEN
}

hitByAttack = ds_list_create();
base_damage = 5;
rand = 0;
crit_rand = 0;
crit_chance = 0;

player_health_set = 40;
player_health = player_health_set;

timer = 5;

player_damage_taken = 0;

invincibility_timer_max = 90;
invincibility_timer = 0;
invincible = false;

light_counter = 0;

globalvar chatTriggered;
chatTriggered = false;
gold = 0;

return_x = 0;
return_y = 0;
////sound////
sword_sound = false;
