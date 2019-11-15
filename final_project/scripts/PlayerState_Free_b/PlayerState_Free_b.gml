/*
hSpeed = (keyRight - keyLeft) * walkSpeed;
vSpeed = vSpeed + gravSpeed;
image_blend = c_white;
image_angle = 0;

//hor collision
if (place_meeting(x+hSpeed,y,oWall))
{
	var onePixel = sign( hSpeed);
	while (!place_meeting(x+onePixel,y,oWall)) x += onePixel;
	hSpeed = 0;
	if (vSpeed > 4)
	{
		gravSpeed = 0.2;
		//hSpeed = sign(hSpeed);
	}
	else
	{
		gravSpeed = 0.8;
	}
}
else
{
	gravSpeed = 0.8
}

x += hSpeed;


if (hSpeed != 0) and !lunge
{
	image_xscale = sign(hSpeed)
	if not keyAttack sprite_index = spr_malek_imp;
	if grounded screenShake(1,1);
}
else
{
		if !lunge sprite_index = spr_malek_idle;	
}
if keyAttack and hit_timer <= 0
{
	sprite_index = spr_red_lunge;
	lunge = true;
	alarm[0] = 15
}

//vert collision

if (place_meeting(x,y+vSpeed,oWall))
{
	var onePixel = sign(vSpeed);
	while (!place_meeting(x,y+onePixel,oWall)) y += onePixel;
	vSpeed = 0;
	grounded = true;
}
y += vSpeed;

if key_jump != 0 and grounded
{
	vSpeed -= jump_amt
	audio_play_sound(jump,1,false);
	grounded = false;
}

if image_xscale == -1 slash_angle = 180;
if image_xscale == 1 slash_angle = 0;
if (hit_timer > 0) hit_timer -= 1;

if (keyAttack) and hit_timer <= 0  
{
	sound_coin_flip = irandom_range(1,2);
	if (sound_coin_flip == 1) audio_play_sound(sword_1,1,false);
	if (sound_coin_flip == 2) audio_play_sound(sword_2,1,false);
	with instance_create_depth(x ,y-20,1,obj_swing)
	{
		direction = other.slash_angle;
		image_angle = direction;
		if (image_angle == 180) x -= 55;
		if (image_angle == 0) x += 55;
	}
	hit_timer = 20;
} 

////Shoot Attack////
if ((keyboard_check_pressed(ord("G")) or mouse_check_button_pressed(mb_right)) and mana > 0) 
	{
		mana -= 33.3333;
		screenShake(4,10)
		with (instance_create_depth(x,y-28,1,obj_range_attack))
		{
			mouse_direction = point_direction(x,y,mouse_x,mouse_y);
			spd = 20;
			direction = mouse_direction
			image_angle = direction;
		}	
		audio_play_sound(Fighting_Game_Shoot,1,false);
	}
////////
////Potion Attack////
if (keyboard_check_pressed(ord("E"))) and flame_potion_count > 0
	{
		audio_play_sound(potion_throw_1,1,false);
		with (instance_create_depth(x,y-28,1,obj_flame_potion_throw_0))
		{
			mouse_direction = point_direction(x,y,mouse_x,mouse_y);
			xSpeed = 20;
			ySpeed = 20;
			direction = mouse_direction;
			//image_angle = direction;
		}
		//audio_play_sound(Fighting_Game_Shoot,1,false);
		flame_potion_count -= 1
	}
////////
////Healing////
if key_heal and mana > 0 and hp < 100
{
	if (healtimer == 90) audio_play_sound(heal_loading,1,false);
	if (healtimer == 15) 
	{
		audio_play_sound(Heal,1,false);
	}
	if (healtimer == 10) instance_create_depth(x,y-28,2,obj_heal_fx);
	
	if healtimer <= 0
	{
		mana -= 33.3333;
		hp += 20;
		healtimer = 90
	}
	else
	{
		healtimer -=1
	}
}
else
{
	audio_stop_sound(heal_loading)
	healtimer = 90;
}
////////

////Shades Player Darker When In Strucutre////
if place_meeting(x,y,obj_stone_bg)
{
	image_blend = c_dkgray;
}
else
{
	image_blend = c_white;
}

////Summons Lightening Attack////
if lightening and mana >= 99 and lightening_on
{
	instance_create_depth(0,0,1,obj_lightening_0);
}

////Blinks if damage taken////
if blink_timer > 0
{
	image_blend = c_red;
	if blink_timer == 8 audio_play_sound(snd_hurt,1,false);
	blink_timer -= 1;
}
////

if (hp <= 0) state = PLAYERSTATE.DEFEAT;
if hp > 100 hp = 100;
