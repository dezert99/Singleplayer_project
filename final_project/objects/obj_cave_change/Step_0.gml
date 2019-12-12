if(collision_rectangle(x - sprite_width,y + sprite_height,x + sprite_width,y-sprite_height,obj_player,false,false) && keyboard_check_pressed(ord("E"))){
	chatTriggered = true	
}

if collision_rectangle(x - sprite_width,y + sprite_height,x + sprite_width,y-sprite_height,obj_player,false,false) && chatTriggered and hasShovel
{
	obj_player.return_x = x;
	obj_player.return_y = y;
	obj_player.x = 300;
	obj_player.y = 400;
	room_goto(rm_cave);
}
else if(collision_rectangle(x - sprite_width,y + sprite_height,x + sprite_width,y-sprite_height,obj_player,false,false) && chatTriggered && !reset){
	if(myTextbox == noone){
		myTextbox = instance_create_layer(x,y-250,"Text",obj_textbox);	
		myTextbox.text = myText
		myTextbox.creator = self;
		myTextbox.name = "Me"
	}
}
else {
	if(myTextbox != noone){
		instance_destroy(myTextbox);
		chatTriggered = false;
		myTextbox = noone;
		reset = false;
	}
}