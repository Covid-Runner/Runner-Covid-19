/// @description Draw Gui

//Draw Endurance

if (instance_exists(obj_yeager_player)) {

	
	//Barre d'endurance
	var text_endurance = "Endurance";
	if (global.current_endurance > obj_yeager_player.tired_endurance) {
		draw_set_color(c_green);
		textscale = 1;
	} else {
		draw_set_color(c_red);
		textscale = 2;
		text_endurance = "Endurance !!!!";
	}
	draw_line_width(x_endurance, y_endurance, x_endurance + global.current_endurance * 2, y_endurance, 30);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_color(c_black);
	draw_text_transformed(x_endurance + 25, y_endurance, text_endurance, textscale, textscale, 0);

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


	//Inventaire
	if (ds_list_size(global.bag) != 0)
	{
		var x_temp = x_bag;
		var y_temp = y_bag;
		var text = spr_yeager_box;
		for (var i = 0; i < ds_list_size(global.bag); i++)
		{ 
			switch (global.bag[| i])
			{
				case BOX_CONTENT.FUSIL:
				{
					text = spr_gun;
					break;
				}
				case BOX_CONTENT.BOTTE:
				{
					text = spr_bottes;
					break;
				}
				case BOX_CONTENT.MP3:
				{
					text = spr_cd;
					break;
				}
				case BOX_CONTENT.BOUFFE:
				{
					text = spr_food;
					break;
				}
				case BOX_CONTENT.ALCOOL:
				{
					text = spr_alcool;
					break;
				}
				case BOX_CONTENT.COMPUTER:
				{
					text = spr_computer;
					break;
				}
				case BOX_CONTENT.PLANT:
				{
					text = spr_plant;
					break;
				}
				case BOX_CONTENT.MEDIC:
				{
					text = spr_medic;
					break;
				}
}
			
			if (i == global.bag_set) 
			{
				tmp_multiplier = multiplier + 2;
				draw_sprite_pos(spr_selected,
								0,
								x_temp + marge - 1,
								y_temp - 1, 
								x_temp + marge + (sprite_get_width(spr_yeager_box) * tmp_multiplier) + 1,
								y_temp - 1,
								x_temp + marge + (sprite_get_width(spr_yeager_box) * tmp_multiplier) + 1,
								y_temp + (sprite_get_height(spr_yeager_box) * tmp_multiplier) + 1,
								x_temp + marge - 1,
								y_temp + (sprite_get_height(spr_yeager_box) * tmp_multiplier) + 1,
								1);
			}
			else
				tmp_multiplier = multiplier;
			draw_sprite_pos(text,
							0,
							x_temp + marge, 
							y_temp, 
							x_temp + marge + (sprite_get_width(spr_yeager_box) * tmp_multiplier),
							y_temp,
							x_temp + marge + (sprite_get_width(spr_yeager_box) * tmp_multiplier),
							y_temp + (sprite_get_height(spr_yeager_box) * tmp_multiplier),
							x_temp + marge,
							y_temp + (sprite_get_height(spr_yeager_box) * tmp_multiplier),
							1);
			x_temp = x_temp + (sprite_get_height(spr_yeager_box) * tmp_multiplier) + marge;
		}
	}
}