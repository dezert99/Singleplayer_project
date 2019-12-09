if(collision_rectangle(x - sprite_width,y + sprite_height,x + sprite_width,y-sprite_height,obj_player,false,false) && keyboard_check_pressed(ord("E"))){
	chatTriggered = true	
}

if place_meeting(x,y,obj_player) && chatTriggered == true
{
	obj_player.x = obj_player.return_x;
	obj_player.y = obj_player.return_y;
	
	room_goto(rm_forest1);
	chatTriggered = false
}