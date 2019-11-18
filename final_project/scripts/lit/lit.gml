var nearest_light = 0;
if instance_exists(torch_light) 
{
	nearest_light = instance_nearest(x,y,torch_light);

	if (place_meeting(x,y,nearest_light))
	{
		depth = 1;
		if (x < nearest_light.x - 100 || x > nearest_light.x + 100) 
		{
			image_blend = c_dkgray;
		}
		else if (x < nearest_light.x - 70 || x > nearest_light.x + 70) 
		{
			image_blend = c_gray;
		}
		else
		{
			image_blend = c_white;
		}
	}
	else
	{
		depth = 3;
	}
}