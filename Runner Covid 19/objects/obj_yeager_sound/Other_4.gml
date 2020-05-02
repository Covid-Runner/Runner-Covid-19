/// @description Insert description here
// You can write your code in this editor


switch (room)
{
	case r_gui_title :
	{
		music = so_tsae_titlescreen;
		audio_play_sound(music, 5, false);
		break;
	}
	case r_lvl1_street :
	{
		music = so_tsae_town;
		audio_play_sound(music, 5, false);
		break;	
	}
	case r_lvl2_mall :
	{
		break;
	}
}