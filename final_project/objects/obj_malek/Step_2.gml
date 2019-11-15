#region 

//centers camera view onto player by halving camera width and height and subtracting from current x and y pos
halfViewWidth = camera_get_view_width(view_camera[0]) / 2;
halfViewHeight = camera_get_view_height(view_camera[0]) / 2;

if (x - halfViewWidth <= 0) or (y + halfViewHeight >= room_height) 
{
	if (x - halfViewWidth <= 0) and (y + halfViewHeight >= room_height)
	{
		camera_set_view_pos(view_camera[0], 0, 400)
	}
	else if (y + halfViewHeight >= room_height)
	{
		camera_set_view_pos(view_camera[0],x - halfViewWidth,400)
	}
	else if (x - halfViewWidth <= 0) 
	{
		camera_set_view_pos(view_camera[0], 0, y-halfViewHeight)
	}

}
else
{
	camera_set_view_pos(view_camera[0],x - halfViewWidth,y-halfViewHeight)
}
if x + halfViewWidth >= room_width
{
	view_visible[0] = false
	view_visible[1] = true
	if x + halfViewWidth >= room_width and y + 200 >= room_height
	{
		camera_set_view_pos(view_camera[1],640,400)
	}
	else if x + halfViewWidth >= room_width and y -200 <= 0
	{
		camera_set_view_pos(view_camera[1],640,0)
	}
	else if y -200 <= 0
	{
		camera_set_view_pos(view_camera[1], x + halfViewWidth,0)
	}
	else
	{
		camera_set_view_pos(view_camera[1], 640,y-halfViewHeight)
	}
}
else
{
	view_visible[1] = false
	view_visible[0] = true
}

#endregion