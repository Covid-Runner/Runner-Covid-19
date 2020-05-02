/// @description init

enum BOX_CONTENT {
	CD = 0,
	BOTTE,
	GUN,
	FOOD,
	VIDE
}
randomize();
name = choose(BOX_CONTENT.CD, BOX_CONTENT.BOTTE,BOX_CONTENT.FOOD, BOX_CONTENT.GUN, BOX_CONTENT.VIDE);
name = BOX_CONTENT.FOOD;

       