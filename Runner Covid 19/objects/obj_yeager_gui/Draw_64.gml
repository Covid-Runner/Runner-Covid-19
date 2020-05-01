/// @description Draw Gui

//Draw Endurance

if (instance_exists(obj_yeager_player)) {

	
	//Barre d'endurance
	if (global.current_endurance > obj_yeager_player.tired_endurance) {
		draw_set_color(c_green);
		textscale = 1;
	} else {
		draw_set_color(c_red);
		textscale = 2;
	}
	draw_line_width(x_endurance, y_endurance, x_endurance + global.current_endurance * 2, y_endurance, 30);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_color(c_black);
	draw_text_transformed(x_endurance + 25, y_endurance, "Endurance", textscale, textscale, 0);


	//Barre de vie
	if (global.current_life > obj_yeager_player.low_life) {
		draw_set_color(c_fuchsia);
		textscale = 1;
	} else {
		draw_set_color(c_red);
		textscale = 2;
	}
	draw_line_width(x_life, y_life, x_life + global.current_life * 2, y_life, 30);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_color(c_black);
	draw_text_transformed(x_life + 25, y_life, "Health", textscale, textscale, 0);

}