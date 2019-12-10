quest = argument0;

switch (quest)
{
	case "book": show_debug_message("inbook"); return hasBook;
	case "monster_parts": return monsterParts >= 3;
	case "": return false;
}

