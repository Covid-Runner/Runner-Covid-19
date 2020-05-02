/// @description move into the door

with (obj_yeager_player)
{
	scr_yeager_transition(TRANS_MODE.GOTO, other.target);
}