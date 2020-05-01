/// @description core Gui
if  global.object_sound_playing {
	if (!scr_yeager_any_audio_is_playing()) {
		if (global.object_sound != -1)
			if audio_exists(global.object_sound)
				audio_play_sound(global.object_sound, 5, false)
				show_debug_message("MUSIQUE MAESTRO !!!");
	}
}

if (!scr_yeager_any_audio_is_playing()) {
	global.object_sound_playing = false;
}