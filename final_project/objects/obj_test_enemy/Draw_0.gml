draw_self();
draw_set_font(font_default);
if (state != ENEMYSTATE.DEAD) draw_healthbar(x - 20, y - 120, x + 20, y - 125, hp*4,c_dkgray,c_red,c_green,0,true,true);

if (state = ENEMYSTATE.HIT)
{
	if (damage_taken > 7)
	{
		color = c_red;
	}
	else
	{
		color = c_orange;
	}
	draw_text_transformed_color(float_x,float_y,string(damage_taken),2.5,2.5,0,color,color,color,color,1);
	float_spd = irandom_range(10,15);
	float_y -= float_spd;
	if (image_xscale == 1) 
	{
		float_x = x - 60;
	}
	else
	{
		float_x = x + 60;
	}
	
}
else
{
	float_y = y - 90;
}

