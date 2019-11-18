depth = 3;
hSpeed = 0;
vSpeed = 0;
grav = 0.7;
hitNow = false;
flash = false;
state = ENEMYSTATE.FREE;
hit_timer = 0;
hit_timer_set = 10;
globalvar damage_taken;
damage_taken = 0;
//frameCount = 0;

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
	DEAD
}
image_index = irandom(10);