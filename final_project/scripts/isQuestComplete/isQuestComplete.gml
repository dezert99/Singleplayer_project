quest = argument0;

switch (quest)
{
	case "book": show_debug_message("inbook"); return hasBook;
	case "monster_parts": return monsterParts >= 8;
	case "pass": return true;
	case "finish": if hasArmor && hasJumpBoots {return true} else {return false};
	case "": return false;
}

