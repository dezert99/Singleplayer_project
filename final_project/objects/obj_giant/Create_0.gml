hSpeed = 3;
vSpeed = 0;
grav = 0.7;
hitNow = false;
flash = false;
state = ENEMYSTATE.FREE;
hit_timer = 0;
hit_timer_set = 10;
gold_drop = 4;
gave_gold = false;
globalvar damage_taken;
damage_taken = 0;
//frameCount = 0;

has_given_part = false;

////variables for graphics////
hp = 25;
float_x = 0;
float_y = y - 80;
float_spd = 5;
color = c_orange;
////////////////

enum ENEMYSTATE
{
	FREE,
	HIT,
	DEAD,
	CHASING
}

base_damage = 4;
rand = 0;
crit_rand = 0;
crit_chance = 0;

player_invincible = false;

image_index = irandom(10);