/// @description Core Game

if (room != r_lvl0_bedroom) && (room != r_end_losing) && (room != r_end_winning)
{
	var bbox_side;

	//input + gestion du sprint
	key_right = keyboard_check(ord("D"));
	key_left = keyboard_check(ord("A"));// || keyboard_check(ord("Q"));
	key_up = keyboard_check(ord("W"));// || keyboard_check(ord("Z"));
	key_down = keyboard_check(ord("S"));

	if (!keyboard_check(vk_lshift) && (!key_down || !key_up || !key_right || !key_left)) {
		global.current_endurance += variation_up_endurance;		
		if (global.current_endurance > max_endurance) global.current_endurance = max_endurance;
	} else {
		global.current_endurance -= variation_down_endurance;
	}


	if (!keyboard_check(vk_lshift)) {
		if (global.current_endurance < tired_endurance)	hsp = (key_right - key_left) * 1 else hsp = (key_right - key_left) * 2; 	
	} else {
		if (global.current_endurance < tired_endurance)	hsp = (key_right - key_left) * 1 else hsp = (key_right - key_left) * 4; 	
	}


	if (!keyboard_check(vk_lshift)) {
			if (global.current_endurance < tired_endurance)	vsp = (key_down - key_up) * 1 else vsp = (key_down - key_up) * 2; 	
	} else {
		if (global.current_endurance < tired_endurance)	vsp = (key_down - key_up) * 1 else vsp = (key_down - key_up) * 4; 	
	}



	switch(room_get_name(room))
	{
		case "r_lvl1_street":
		{
			var j = 0;
			break;
		}
		case "r_lvl2_mall":
		{
			var j = 1;
			break;
		}
		case "r_lvl3_bank":
		{
			var j = 2;
			break;
		}
		 
	}
	//for (var i = 0; i < 5; i++)
	for (var i = 0; i < array_length_2d(arrayTile,j); i++)
	{
		tilemap = layer_tilemap_get_id(arrayTile[j,i]);
		//horizontal collision
		if (hsp > 0) bbox_side = bbox_right else bbox_side = bbox_left;
		if (tilemap_get_at_pixel(tilemap, bbox_side + hsp, bbox_top) != 0) || (tilemap_get_at_pixel(tilemap, bbox_side + hsp, bbox_bottom) != 0) {
			if (hsp > 0) x = x - (x mod 4) + 3 - (bbox_right - x);
			else x = x - (x mod 4) - (bbox_left - x);
			hsp = 0;
		}

		//Vertical collision
		if (vsp > 0) bbox_side = bbox_bottom else bbox_side = bbox_top;
		if (tilemap_get_at_pixel(tilemap, bbox_left, bbox_side + vsp) != 0) || (tilemap_get_at_pixel(tilemap, bbox_right, bbox_side + vsp) != 0) {
			if (vsp > 0) y = y - (y mod 4) + 3 - (bbox_bottom - y);
			else y = y - (y mod 4) - (bbox_top - y);
			vsp = 0;
		}


	}
	x += hsp;
	y += vsp;


	//Animation
	if (hsp < 0) {
		sprite_index = spr_player_walk_left;
		image_speed = 1;
	}
	if (hsp > 0) {
		sprite_index = spr_player_walk_right;
		image_speed = 1;
	}
	if (hsp == 0)
	{
		if (sprite_index == spr_player_walk_right)
		{
			image_speed = 0;
			image_index = 0;
		}
		if (sprite_index == spr_player_walk_left)
		{
			image_speed = 0;
			image_index = 0;
		}
	}

	if (vsp < 0) {
		sprite_index = spr_player_walk_up;
		image_speed = 1;
	}
	if (vsp > 0) {
		sprite_index = spr_player_walk_down;
		image_speed = 1;
	}
	if (vsp == 0)
	{
		if (sprite_index == spr_player_walk_down)
		{
			image_speed = 0;
			image_index = 0;
		}
		if (sprite_index == spr_player_walk_up)
		{
			image_speed = 0;
			image_index = 0;
		}
	}
}

//Gestion Inventaire

if (global.bag_set != -1)
{
	if (room != r_lvl0_bedroom)
	{
		//Hors de la chambre
		//change item
		if (keyboard_check_pressed(ord("Q")))
		{
			if (global.bag_set > 0) global.bag_set -= 1;
		}
		if (keyboard_check_pressed(ord("E")))
		{
			if (global.bag_set < (global.bag_maxsize - 1)) global.bag_set += 1;
		}
		//use item
		if (keyboard_check_pressed(ord("F")))
		{
			switch (global.bag[| global.bag_set])
			{
				case BOX_CONTENT.BOUFFE :
				{
					global.current_life += 42;
					if (global.current_life > obj_yeager_player.max_life) global.current_life = obj_yeager_player.max_life;
					ds_list_delete(global.bag, global.bag_set);
					if (global.bag_set > 0) global.bag_set -= 1;
					break;
				}
				case BOX_CONTENT.ALCOOL :
				{
					global.current_mental_health += 42;
					if (global.current_mental_health > obj_yeager_player.max_mental_health) global.current_mental_health = obj_yeager_player.max_mental_health;
					ds_list_delete(global.bag, global.bag_set);
					if (global.bag_set > 0) global.bag_set -= 1;
					break;
				}
				case BOX_CONTENT.BOTTE :
				{
					global.current_endurance += 42;
					if (global.current_endurance > obj_yeager_player.max_endurance) global.current_endurance = obj_yeager_player.max_endurance; 
					ds_list_delete(global.bag, global.bag_set);
					if (global.bag_set > 0) global.bag_set -= 1;
					break;
				}
				case BOX_CONTENT.FUSIL :
				{
					ds_list_delete(global.bag, global.bag_set);
					if (global.bag_set > 0) global.bag_set -= 1;
					scr_yeager_transition(TRANS_MODE.GOTO, r_end_losing, 650, 4460);
					//game_end();
					break;
				}
				case BOX_CONTENT.MP3 :
				{	
					audio_stop_sound(obj_yeager_sound.music);
					obj_yeager_sound.music = so_yeager_Beethoven___F_r_Elise;
					audio_play_sound(obj_yeager_sound.music, 5, false);
					ds_list_delete(global.bag, global.bag_set);
					if (global.bag_set > 0) global.bag_set -= 1;
					break;
				}
				default :
				{
					break;
				}
			}

		}
		//Drop l'item
		if (keyboard_check_pressed(ord("G")))
		{
			switch (global.bag[| global.bag_set])
			{
				case BOX_CONTENT.COMPUTER :
				{
					break;
				}
				case BOX_CONTENT.MEDIC :
				{
					break;
				}
				case BOX_CONTENT.PLANT :
				{
					break;
				}
				case BOX_CONTENT.MONEY :
				{
					break;
				}
				case BOX_CONTENT.MASK :
				{
					break;
				}
				default :
				{
					ds_list_delete(global.bag, global.bag_set);
					if (global.bag_set > 0) global.bag_set -= 1;
					break;
				}
			}

		}
	}
	else
	{
		//Gestion de l'inventaire dans la chambre
		//change item
		if (keyboard_check_pressed(ord("Q")))
		{
			if (global.bag_set > 0) global.bag_set -= 1;
		}
		if (keyboard_check_pressed(ord("E")))
		{
			if (global.bag_set < (global.bag_maxsize - 1)) global.bag_set += 1;
		}
		//use
		if (keyboard_check_pressed(ord("F")))
		{
			switch (global.bag[| global.bag_set])
			{
				case BOX_CONTENT.BOUFFE :
				{
					ds_list_delete(global.bag, global.bag_set);
					if (global.bag_set > 0) global.bag_set -= 1;
					break;
				}
				case BOX_CONTENT.COMPUTER :
				{
					global.computer_set = true;
					ds_list_delete(global.bag, global.bag_set);
					if (global.bag_set > 0) global.bag_set -= 1;			
					break;
				}
				case BOX_CONTENT.MEDIC :
				{
					global.medic_set = true;
					ds_list_delete(global.bag, global.bag_set);
					if (global.bag_set > 0) global.bag_set -= 1;			
					break;
				}
				case BOX_CONTENT.PLANT :
				{
					global.plant_set = true;
					ds_list_delete(global.bag, global.bag_set);
					if (global.bag_set > 0) global.bag_set -= 1;			
					break;
				}
				case BOX_CONTENT.BOTTE :
				{
					break;
				}
				case BOX_CONTENT.ALCOOL :
				{
					break;
				}
				case BOX_CONTENT.FUSIL :
				{
					break;
				}
				case BOX_CONTENT.MP3 :
				{				
					break;
				}
			}

		}
		//Drop l'item
		if (keyboard_check_pressed(ord("G")))
		{
			switch (global.bag[| global.bag_set])
			{
				case BOX_CONTENT.COMPUTER :
				{
					break;
				}
				case BOX_CONTENT.MEDIC :
				{
					break;
				}
				case BOX_CONTENT.PLANT :
				{
					break;
				}
				case BOX_CONTENT.MONEY :
				{
					break;
				}
				case BOX_CONTENT.MASK :
				{
					break;
				}
				default :
				{
					ds_list_delete(global.bag, global.bag_set);
					if (global.bag_set > 0) global.bag_set -= 1;
					break;
				}
			}

		}
	}
}

if (room != r_end_losing) && (room != r_end_winning)
{
	//endgame
	if (global.current_life == 0)
	{
		scr_yeager_transition(TRANS_MODE.GOTO, r_end_losing, 650, 4460);
	//	scr_yeager_transition(TRANS_MODE.RESTART);
	}

	if (global.current_mental_health == 0)
	{
		scr_yeager_transition(TRANS_MODE.GOTO, r_end_losing, 650, 4460);
	//	scr_yeager_transition(TRANS_MODE.RESTART);
	}

	if (global.computer_set && global.plant_set && global.medic_set)
	{
		scr_yeager_transition(TRANS_MODE.GOTO, r_end_winning, 650, 4460);
	}
}

if (room == r_end_winning)
{
	if (keyboard_check_pressed(vk_enter))
	{
		scr_yeager_transition(TRANS_MODE.RESTART);
	}
}

if (room == r_end_losing)
{
	if (keyboard_check_pressed(vk_enter))
	{
		scr_yeager_transition(TRANS_MODE.RESTART);
	}
}
