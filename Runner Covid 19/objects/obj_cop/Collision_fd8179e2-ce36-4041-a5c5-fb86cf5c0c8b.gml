if (time_before_new_hit == 0)
{
	if (ds_list_size(global.bag) > 0)
	{
		while (!ds_list_empty(global.bag))
		{
			if (global.bag[| 0] == BOX_CONTENT.COMPUTER)
			{
				global.computer_get = false;
			}
			if (global.bag[| 0] == BOX_CONTENT.MEDIC)
			{
				global.medic_get = false;
			}
			if (global.bag[| 0] == BOX_CONTENT.PLANT)
			{
				global.plant_get = false;
			}
			if (global.bag[| 0] == BOX_CONTENT.MASK)
			{
				global.mask_get = false;
			}
			if (global.bag[| 0] == BOX_CONTENT.MONEY)
			{
				global.money_get = false;
			}
			ds_list_delete(global.bag, 0);				
		}
	}
	scr_yeager_transition(TRANS_MODE.GOTO, r_lvl0_bedroom, 0, 0);
	time_before_new_hit = 300;
}
show_debug_message("Ah bas les flics");