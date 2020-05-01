/// @description any_audio_is_playing()
/// @function any_audio_is_playing

for (var i = 0; audio_exists(i); i++)
{
	if audio_is_playing(i)
		return true;
}
return false;