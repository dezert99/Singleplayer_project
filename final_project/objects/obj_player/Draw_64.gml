/// @description Insert description here
// You can write your code in this editor

draw_text(10,10,string(player_health));

draw_text(10,30,string(invincibility_timer));


draw_text(10,50,string(hit_timer));
draw_text(1700,10,"Gold: " + string(gold));

draw_sprite_part_ext(spr_healthbar_inside,1,0,0,((player_health/player_health_set)*256),64,40,20,1.5,1.2,c_white,1);
draw_sprite_ext(spr_healthbar_outside,1,40,20,1.5,1.2,0,c_white,1);

//draw_sprite_part_ext(spr_heart,1,0,0,128,128,40,40,0.6,0.6,c_white,1); 