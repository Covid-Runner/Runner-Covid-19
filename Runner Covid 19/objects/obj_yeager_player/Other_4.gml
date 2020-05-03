/// @description 

x = global.pos_old_room_x;
y = global.pos_old_room_y;

if (room == r_end_winning)
{
	if (global.money_get)
	{
		layer_background_visible(layer_background_get_id("money"), true);
	}
	else
	{
		layer_background_visible(layer_background_get_id("money"), false);
	}
	
	if (global.mask_get)
	{
		layer_background_visible(layer_background_get_id("mask"), true);
	}
	else
	{
		layer_background_visible(layer_background_get_id("mask"), false);
	}
}