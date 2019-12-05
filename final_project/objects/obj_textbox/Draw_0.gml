draw_set_halign(fa_left);
draw_set_valign(fa_left);
//Test

draw_sprite(spr_box, 0, x, y);

draw_set_font(font_default)

text_part = string_copy(text[page],0,char_counter);

//Draw name
draw_text(x+x_buffer,y+y_buffer,name)

draw_text_ext(x+x_buffer,y+string_h+(2*y_buffer),text_part,string_h,box_width);