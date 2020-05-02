/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_space) && image_index == 0)
{
	if (name != BOX_CONTENT.VIDE)
	{
		if (ds_list_size(global.bag) < global.bag_maxsize)
		{
			ds_list_add(global.bag, name);
		}
		//instance_create_layer(obj_yeager_player.x + 100, obj_yeager_player.y, "Bag", obj_yeager_box);
		//show_debug_message("POSSS :" + string(obj_yeager_gui.x_bag));
	}
	image_index ++;
	//instance_destroy();
}