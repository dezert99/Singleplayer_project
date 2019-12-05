image_alpha = obj_player.light_counter * 0.1;
scale = 1 + obj_player.light_counter * 0.5
image_xscale = scale;
image_yscale = scale;
x = obj_player.x;
y = obj_player.y - 150;
if obj_player.light_counter > 0
{
	if timer >= 0
	{
		obj_player.light_counter -= 1;
		timer = timer_set
	}
	else
	{
		timer -= 1;
	}
}
