/*
#region 
view_visible[0] = true
halfViewWidth = camera_get_view_width(view_camera[0]) / 2;
halfViewHeight = camera_get_view_height(view_camera[0]) / 2; 
leftBorder = (x - halfViewWidth) <= 0;
rightBorder = (x + halfViewWidth) >= room_width; 
bottomBorder = (y + halfViewHeight) >= room_height; 
topBorder = (y - halfViewHeight) <= 0; 
camera_x = 0;
camera_y = 0; 
if (!leftBorder || !rightBorder) camera_x = x - halfViewWidth;
if (!bottomBorder || !topBorder) camera_y = y - halfViewHeight;
if (leftBorder) camera_x = 0;
if (rightBorder) camera_x = room_width - halfViewWidth*2;
if (topBorder) camera_y = 0;
if (bottomBorder) camera_y = room_height - halfViewHeight*2;
camera_set_view_pos(view_camera[0], camera_x , camera_y)
#endregion
*/