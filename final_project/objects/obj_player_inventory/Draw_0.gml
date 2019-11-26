halfViewWidth = camera_get_view_width(view_camera[0]) / 2;
halfViewHeight = camera_get_view_height(view_camera[0]) / 2; 
if obj_player.state == PLAYERSTATE.MENU
{
	var inv_size = 150;
	draw_roundrect(halfViewWidth/2 - inv_size,halfViewHeight/2 - inv_size,halfViewWidth/2 + inv_size,halfViewHeight/2 + inv_size,false)
}