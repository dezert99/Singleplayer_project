player_in_range = collision_rectangle(x - sprite_width,y + sprite_height,x + sprite_width,y-sprite_height,obj_player,false,false);
if(player_in_range && keyboard_check_pressed(ord("E"))){
	chatTriggered = true	
}

if(player_in_range && chatTriggered && !reset){
	if(myTextbox == noone){
		myTextbox = instance_create_layer(x,y-250,"Text",obj_textbox);	
		if(show_done_text){
			myTextbox.text = doneText
		}
		else{
			myTextbox.text = myText
		}
		myTextbox.creator = self;
		myTextbox.name = my_name
		if(!gave_item){
			myTextbox.item_to_give = item_to_give;
			gave_item = true;
		}
	}
}
else {
	if(myTextbox != noone){
		instance_destroy(myTextbox);
		chatTriggered = false;
		myTextbox = noone;
		reset = false;
		if(has_done_text){
			show_done_text = true;	
		}
		
	}
}