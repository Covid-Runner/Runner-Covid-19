/// @description play music


if (!scr_yeager_any_audio_is_playing())
{
	switch (room)
	{
		case r_gui_title :
		{
			music = so_tsae_titlescreen;
			audio_play_sound(music, 5, true);
			break;
		}
		case r_lvl1_street :
		{
			music = so_tsae_town;
			audio_play_sound(music, 5, true);
			break;	
		}
		case r_lvl2_mall :
		{
			music = so_yeager_mall;
			audio_play_sound(music, 5, true);
			break;
		}
		case r_lvl0_bedroom :
		{
			music = so_yeager_bedroom;
			audio_play_sound(music, 5, true);
			break;
		}
		case r_end_losing :
		{
			music = so_yeager_end_losing;
			audio_play_sound(music, 5, true);
			break;
		}
		case r_end_winning :
		{
			music = so_victory;
			audio_play_sound(music, 5, true);
			break;
		}
		case r_lvl3_bank :
		{
			music = so_tsae_audio;
			audio_play_sound(music, 5, true);
			break;
		}
	}
}