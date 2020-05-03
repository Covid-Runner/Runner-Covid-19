/// @description 


if (visible == true)
{
	if (keyboard_check(vk_space))
	{
		if (ds_list_size(global.bag) < global.bag_maxsize)
		{
			ds_list_add(global.bag, name);
			if (global.bag_set == -1) global.bag_set = 0;
			global.money_get = true;
			visible = false;	
		}
	}
}