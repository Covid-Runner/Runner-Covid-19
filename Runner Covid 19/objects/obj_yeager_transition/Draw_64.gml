/// @description draw black box

if (mode != TRANS_MODE.OFF) {
	draw_set_color(c_black);
	draw_rectangle(0, 0, w_screen, percent * h_half_screen, false);
	draw_rectangle(0, h_screen, w_screen, h_screen - (percent * h_half_screen) , false);
}