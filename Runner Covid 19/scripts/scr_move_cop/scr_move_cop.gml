if (distance_to_object(obj_gui_player) < range || triggered) {
	move_towards_point(obj_gui_player.x, obj_gui_player.y, spd);
}
else
speed = 0;
