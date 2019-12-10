quest = argument0;

switch (quest)
{
	case "book": return hasBook;
	case "monster_parts": return monsterParts >= 15;
	case "": return true;
}

