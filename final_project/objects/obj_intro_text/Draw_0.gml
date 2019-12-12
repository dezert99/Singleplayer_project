draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fancy_intro_font);
if sent_count < 8
{
	if (timer <= 0)
	{
		sent_count += 1;
		timer = timer_set;
	}
	else
	{
		if timer < 60
		{
			fade -= 0.05
		}
		if timer <= timer_set and timer >= 60
		{
			fade += 0.02
		}
		draw_text_color(x,y,sentence[sent_count],c_white,c_white,c_white,c_white,fade);
		timer -= 1;
	}
}
else
{
	audio_stop_sound(intro_strings_v1_big_rough);
	room_goto(rm_forest1);
}
