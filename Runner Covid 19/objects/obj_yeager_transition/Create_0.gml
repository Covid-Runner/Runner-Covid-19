/// @description init

w_screen = display_get_gui_width();
h_screen = display_get_gui_height();
h_half_screen = h_screen / 2;

enum TRANS_MODE {
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}

mode = TRANS_MODE.INTRO;
percent = 1;
target = room;