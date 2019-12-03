/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_backspace)){
	chatTriggered = true	
}

if(collision_rectangle(x - sprite_width,y + sprite_height,x + sprite_width,y-sprite_height,obj_player,false,false) && chatTriggered && !reset){
	if(myTextbox == noone){
		myTextbox = instance_create_layer(x,y-250,"Text",obj_textbox);	
		myTextbox.text = myText
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
	}
}