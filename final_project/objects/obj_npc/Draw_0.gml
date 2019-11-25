/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_rectangle(x-75,y,x+75,y-100,true);
if(keyboard_check_pressed(vk_backspace)){
	chatTriggered = true	
}

if(collision_rectangle(x-75,y,x+75,y-100,obj_player,false,false) && chatTriggered && !reset){
	if(myTextbox == noone){
		myTextbox = instance_create_layer(x,y-250,"Text",obj_textbox);	
		myTextbox.text = myText
		myTextbox.creator = self;
		myTextbox.name = my_name;
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