if night
{
	layer_set_visible("Night",true);
	layer_set_visible("Day",false);
	layer_set_visible("Lgihts",true);
	obj_dark.image_alpha = 0.8;
}
else
{
	layer_set_visible("Night",false);
	layer_set_visible("Day",true);
	layer_set_visible("Lights",false);
	obj_dark.image_alpha = 0;
}