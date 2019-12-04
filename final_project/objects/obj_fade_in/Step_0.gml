//if (obj_player.state == PLAYERSTATE.FREE) instance_destroy();
image_alpha -= 0.005;
if image_alpha <= 0
{
	instance_destroy();
}
if obj_player.x <= 0 + halfViewWidth
{
	x = halfViewWidth;
}
else
{
	x = obj_player.x;
}

y = obj_player.y - halfViewHeight+100;