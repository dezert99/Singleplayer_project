keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyJump = keyboard_check_pressed(vk_space);
keyAttack = keyboard_check_pressed(ord("H"));
keyMenu = keyboard_check_pressed(vk_tab);

//This needs to superseed any state except death or menu
if(state != PLAYERSTATE.DEATH && state != PLAYERSTATE.MENU){
	if(player_damage_taken > 0 && invincibility_timer == 0){
		player_health -= player_damage_taken;
		player_damage_taken = 0;
		state = PLAYERSTATE.TOOK_DAMAGE
		hit_timer = hit_timer_set;
		invincibility_timer = invincibility_timer_max;
	}
}

if(invincibility_timer > 0){
	invincibility_timer--;
	image_blend = c_blue;
}
else{
	image_blend = c_white;	
}



switch (state)
{
	case PLAYERSTATE.FREE: PlayerState_Free(); break;
	case PLAYERSTATE.ATTACK_SLASH: PlayerState_AttackSlash(); break;
	case PLAYERSTATE.ATTACK_COMBO: PlayerState_AttackCombo();break;
	case PLAYERSTATE.ATTACK_TRIPLE: PlayerState_AttackTriple();break;
	case PLAYERSTATE.DEATH: PlayerState_Death(); break;
	case PLAYERSTATE.MENU: PlayerState_Menu(); break;
	case PLAYERSTATE.TOOK_DAMAGE: PlayerState_TookDamage(); break;
}
