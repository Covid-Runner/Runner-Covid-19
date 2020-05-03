/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_space) && image_index == 0)
{
	if (name != BOX_CONTENT.VIDE)
	{
		if (ds_list_size(global.bag) < global.bag_maxsize)
		{
			ds_list_add(global.bag, name);
			image_index++;
			if (global.bag_set == -1) global.bag_set = 0;
			
		}
	}
	else
	{
		image_index++;
	}
}