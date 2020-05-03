if (distance_to_object(obj_yeager_player) < range || triggered) {
	move_towards_point(obj_yeager_player.x, obj_yeager_player.y, spd);
}
else
speed = 0;
