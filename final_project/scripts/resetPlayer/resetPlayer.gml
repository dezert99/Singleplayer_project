obj_player.x = 467;
obj_player.y = 1950;

if(gold > 5){
	gold -=5;
}
else {
	gold = 0;	
}

obj_player.player_health = obj_player.player_health_set
room_goto(rm_forest1);