/// @description Camera Code

//update Destination
if (instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y;
}

//update position de l'objet
x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

//update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_w_half);