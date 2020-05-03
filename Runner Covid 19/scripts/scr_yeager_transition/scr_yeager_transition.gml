/// @desc src_yeager_transition (mode, targetroom)
/// @arg Mode
/// @arg Targetroom

with (obj_yeager_transition) {
	mode = argument[0];
	if (argument_count > 1) {
		target = argument[1];
	}
	if (argument_count > 2) {
		global.pos_old_room_x = argument[2];
	}
	if (argument_count > 3) {
		global.pos_old_room_y = argument[3];
	}
}