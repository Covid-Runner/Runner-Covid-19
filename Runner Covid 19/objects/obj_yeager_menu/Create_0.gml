/// @description init

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width + 200;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25;
menu_font = fo_yeager_menu;
menu_item_height = font_get_size(menu_font);
menu_committed = -1;
menu_control = true;

menu[1] = "New Game";
menu[0] = "Quit";

menu_cursor = 1;
menu_items = array_length_1d(menu);