halfViewWidth = camera_get_view_width(view_camera[0]) / 2;
halfViewHeight = camera_get_view_height(view_camera[0]) / 2; 
center_x = obj_player.camera_x + halfViewWidth;
center_y = obj_player.camera_y + halfViewHeight;
nearest_slot = ds_list_find_value(slots,0);
if obj_player.state == PLAYERSTATE.MENU
{
	var inv_x = obj_player.camera_x - (inv_size_x/2) + halfViewWidth
	var inv_x1 = obj_player.camera_x + (inv_size_x/2) + halfViewWidth
	var inv_y = obj_player.camera_y - (inv_size_y/2) + halfViewHeight
	var inv_y1 = obj_player.camera_y + (inv_size_y/2) + halfViewHeight
	draw_roundrect(inv_x,inv_y,inv_x1,inv_y1,false)
	if hasBook
	{
		//nearest_slot = ds_list_find_value(slots,0);
		draw_sprite(spr_inv_book,1,inv_x+nearest_slot[0],inv_y+nearest_slot[1]);
	}
}
depth = 1;
//draw_text(800,1500,string(nearest_slot));
