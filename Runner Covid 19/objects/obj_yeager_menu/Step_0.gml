/// @description core menu

menu_x += (menu_x_target - menu_x) / menu_speed;

if (menu_control)
{
	if (keyboard_check_pressed(ord("W")))
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	
	if (keyboard_check_pressed(ord("S")))
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items - 1;
	}
	
	if (keyboard_check_pressed(vk_enter))
	{
		menu_x_target = gui_width + 200;
		menu_committed = menu_cursor;
		menu_control = false;
	}
}

if (menu_x > gui_width + 150) && (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 2 : default :
		{
			scr_yeager_transition(TRANS_MODE.GOTO, r_lvl0_bedroom,1160, 4365);
			break;
		}
		case 0 :
		{
			game_end();
			break;
		}
	}
}
