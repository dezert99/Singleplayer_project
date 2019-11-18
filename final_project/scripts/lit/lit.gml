if (place_meeting(x,y,torch_light))
{
	depth = 1;
	if (x < torch_light.x - 100 || x > torch_light.x + 100) 
	{
		image_blend = c_dkgray;
	}
	else if (x < torch_light.x - 70 || x > torch_light.x + 70) 
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
	image_blend = c_white;
}
