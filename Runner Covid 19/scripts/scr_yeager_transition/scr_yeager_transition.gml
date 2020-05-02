/// @desc src_yeager_transition (mode, targetroom)
/// @arg Mode
/// @arg Targetroom

with (obj_yeager_transition) {
	mode = argument[0];
	if (argument_count > 1) {
		target = argument[1];
	}
}