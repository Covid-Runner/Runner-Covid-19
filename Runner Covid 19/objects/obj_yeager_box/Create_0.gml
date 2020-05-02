/// @description init

enum BOX_CONTENT {
	MP3 = 0,
	BOTTE,
	FUSIL,
	VIDE
}
randomize();
name = choose(BOX_CONTENT.MP3, BOX_CONTENT.BOTTE, BOX_CONTENT.FUSIL, BOX_CONTENT.VIDE);