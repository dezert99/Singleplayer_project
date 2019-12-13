fric += 1.5;
hSpeed = 35 - fric;
vSpeed = 0;

if !sword_sound 
{
	audio_play_sound(Heal,1,false);
	sword_sound = true;
}

ProcessAttack(spr_knight_attack_combo_2,spr_knight_attack_combo_2HB);

if (animation_end())
{
	sword_sound = false;
	sprite_index = spr_malek_idle;
	state = PLAYERSTATE.FREE;
}
if (place_meeting(x+hSpeed,y,oWall))
{
	var onePixel = sign(hSpeed);
	while (!place_meeting(x+onePixel,y,oWall)) x += onePixel;
	hSpeed = 0;
}
if image_xscale == 1 
{
	x += hSpeed;
	
}
if image_xscale == -1 
{
	x -= hSpeed;
}


if timer > 0
{
	timer -= 1
}
else
{
	
	//timer = 5;
}
