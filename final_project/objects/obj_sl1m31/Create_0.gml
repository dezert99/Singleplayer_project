hSpeed = 0;
vSpeed = 0;
gravSpeed = 1;
walkSpeed = 10;

grounded=false;

jump_amt = 20;

state = SLIMESTATE.FREE;

halfViewWidth = camera_get_view_width(view_camera[0]) / 2;
halfViewHeight = camera_get_view_height(view_camera[0]) / 2;

chase = false;

enum SLIMESTATE
{
	FREE,
	HIT,
	DEAD,
	CHASING
}

