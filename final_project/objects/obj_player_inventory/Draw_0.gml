halfViewWidth = camera_get_view_width(view_camera[0]) / 2;
halfViewHeight = camera_get_view_height(view_camera[0]) / 2; 
center_x = obj_player.camera_x + halfViewWidth;
center_y = obj_player.camera_y + halfViewHeight;
if obj_player.state == PLAYERSTATE.MENU
{
	draw_roundrect(obj_player.camera_x - (inv_size_x/2) + halfViewWidth,obj_player.camera_y - (inv_size_y/2) + halfViewHeight,obj_player.camera_x + (inv_size_x/2) + halfViewWidth,obj_player.camera_y + (inv_size_y/2) + halfViewHeight,false)
	if hasBook
	{
		draw_sprite(spr_inv_book,1,inv_size_x,inv_size_y);
	}
}