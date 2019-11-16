draw_self();
if state != ENEMYSTATE.DEAD draw_healthbar(x - 50, y - 120, x + 50, y - 125, hp,c_dkgray,c_red,c_green,0,true,true);
if state = ENEMYSTATE.HIT draw_text_transformed_color(obj_test_enemy.x-70,obj_test_enemy.y-80,string(damage_taken),1.5,1.5,0,c_red,c_red,c_red,c_red,1);
