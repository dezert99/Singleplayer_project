hSpeed = 0;
vSpeed = 0;
grav = 0.5;
hitNow = false;
flash = false;
state = ENEMYSTATE.FREE;
hit_timer = 0;
hit_timer_set = 10;
globalvar damage_taken;
damage_taken = 0;
//frameCount = 0;
hp = 30;

enum ENEMYSTATE
{
	FREE,
	HIT,
	DEAD
}
image_index = irandom(10);