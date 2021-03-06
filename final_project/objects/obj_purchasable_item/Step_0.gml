if(!chatTriggered && collision_rectangle(x - sprite_width,y + sprite_height,x + sprite_width,y-sprite_height,obj_player,false,false) && keyboard_check_pressed(ord("E")))
{
	chatTriggered = true	
}

if(reset && purchasing_item)
{
	obj_player.state = PLAYERSTATE.FREE;
	instance_destroy();	
}

if(collision_rectangle(x - sprite_width,y + sprite_height,x + sprite_width,y-sprite_height,obj_player,false,false) && chatTriggered && !reset)
{
	if(myTextbox == noone)
	{
		obj_player.state = PLAYERSTATE.FROZEN;
		myTextbox = instance_create_layer(x,y-250,"Text",obj_textbox);
		if(gold >= cost)
		{
			myTextbox.text = buy_text
			myTextbox.creator = self;
			myTextbox.name = my_name
			myTextbox.item_to_give = item_to_give;
			purchasing_item = true;
			gold -= cost;
			hasItem = true;
		}
		else
		{
			myTextbox.text = cant_buy_text
			myTextbox.creator = self;
			myTextbox.name = my_name
		}
	}
}
else 
{
	if(myTextbox != noone)
	{
		instance_destroy(myTextbox);
		obj_player.state = PLAYERSTATE.FREE;
		chatTriggered = false;
		myTextbox = noone;
		reset = false;
	}
}