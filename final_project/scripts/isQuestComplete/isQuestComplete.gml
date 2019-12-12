quest = argument0;

switch (quest)
{
	case "book": show_debug_message("inbook"); return hasBook;
	case "monster_parts": return monsterParts >= 3;
	case "pass": return true;
	case "done": if hasArmor && hasJumpBoots {return true} else {return false};
	case "": return false;
}

