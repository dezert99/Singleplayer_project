if(collision_rectangle(x - sprite_width,y + sprite_height,x + sprite_width,y-sprite_height,obj_player,false,false) && keyboard_check_pressed(ord("E"))){
	chatTriggered = true	
}

if place_meeting(x,y,obj_player) && chatTriggered == true
{
	obj_player.return_x = x;
	obj_player.return_y = y;
	obj_player.x = 288;
	obj_player.y = 520;
	
	room_goto(rm_shop);
	chatTriggered = false
}