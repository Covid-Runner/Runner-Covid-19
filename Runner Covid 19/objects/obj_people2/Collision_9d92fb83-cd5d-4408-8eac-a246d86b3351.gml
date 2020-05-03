if (time_before_new_hit == 0)
{
	global.current_life -= dmg;
	if (global.current_life < 0) global.current_life = 0;
	time_before_new_hit = 300;
	//show_debug_message(global.current_life);
}