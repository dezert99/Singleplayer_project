player_in_range = collision_rectangle(x - sprite_width,y + sprite_height,x + sprite_width,y-sprite_height,obj_player,false,false);
if(player_in_range && keyboard_check_pressed(ord("E"))){
	chatTriggered = true	
}

if(player_in_range && chatTriggered && !reset){
	if(myTextbox == noone){
		quest_complete = isQuestComplete(quest);
		myTextbox = instance_create_layer(x,y-250,"Text",obj_textbox);	
		if((!quest_complete || gave_item)&& show_done_text){
			myTextbox.text = doneText
		}
		else if(quest_complete && been_spoken_to){
			myTextbox.text = completedText;
			if(has_done_text){
				show_done_text = true;
			}
			if(!gave_item){
				giveItem(item_to_give);
				gave_item = true;
			}
		}
		else{
			myTextbox.text = myText;
			if(has_done_text){
				show_done_text = true;
			}
			been_spoken_to = true;
		}
		
		myTextbox.creator = self;
		myTextbox.name = my_name
		
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