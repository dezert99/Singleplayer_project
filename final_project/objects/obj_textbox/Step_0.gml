/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_backspace)){
	if(page < array_length_1d(text)-1){
		page++;		
		char_counter = 0;
	}
	else {
		instance_destroy();
		creator.reset = true;
	}
}

if(char_counter < string_length(text[page])){
	char_counter++;
}