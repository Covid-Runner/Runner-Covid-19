/// @description init

enum BOX_CONTENT {
	MP3 = 0,
	BOTTE,
	FUSIL,
	BOUFFE,
	VIDE
}
randomize();

rng = random(100);

if (rng >= 0) && (rng < 20) name = BOX_CONTENT.VIDE;
if (rng >= 20) && (rng < 35) name = BOX_CONTENT.BOTTE;
if (rng >= 35) && (rng < 70) name = BOX_CONTENT.BOUFFE;
if (rng >= 70) && (rng < 95) name = BOX_CONTENT.MP3;
if (rng >= 95) && (rng <= 100) name = BOX_CONTENT.FUSIL;


