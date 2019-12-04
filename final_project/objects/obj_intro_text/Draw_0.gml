draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fancy_intro_font);
if sent_count < 8
{
	if (timer <= 0)
	{
		sent_count += 1;
		timer = 300;
	}
	else
	{
		if timer < 60
		{
			fade -= 0.04
		}
		if timer <= 300 and timer >= 60
		{
			fade += 0.04
		}

		draw_text_color(x,y,sentence[sent_count],c_white,c_white,c_white,c_white,fade);
		timer -= 1;
	}
}
else
{
	room_goto(rm_game);
}
