globalvar halfViewWidth,halfViewHeight;
halfViewWidth = camera_get_view_width(view_camera[0]) / 2;
halfViewHeight = camera_get_view_height(view_camera[0]) / 2; 
night = true;
camera_center_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2
camera_center_y = camera_get_view_x(view_camera[0]) + camera_get_view_height(view_camera[0])/2
if room = rm_forest
{
	instance_create_layer(camera_center_x,camera_center_y,"UI",obj_fade_in);
	audio_play_sound(forestv1_rough_,1,true);
}