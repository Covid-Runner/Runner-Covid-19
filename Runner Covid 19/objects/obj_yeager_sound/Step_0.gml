/// @description play music

if  (room == r_gui_title)
{
	if (!scr_yeager_any_audio_is_playing())
	{
		audio_play_sound(so_tsae_titlescreen, 5, true);
	}
}
else
{
	audio_stop_all();
}