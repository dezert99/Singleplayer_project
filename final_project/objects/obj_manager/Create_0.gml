globalvar halfViewWidth,halfViewHeight;
halfViewWidth = camera_get_view_width(view_camera[0]) / 2;
halfViewHeight = camera_get_view_height(view_camera[0]) / 2; 
night = true;
camera_center_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2
camera_center_y = camera_get_view_x(view_camera[0]) + camera_get_view_height(view_camera[0])/2
if room = rm_forest2 or room = rm_forest1
{
	instance_create_layer(0,0,"UI",obj_warmth);
	instance_create_layer(0,0,"UI",obj_forest_fade_in);
	audio_play_sound(forestv1_rough_,1,true);
}