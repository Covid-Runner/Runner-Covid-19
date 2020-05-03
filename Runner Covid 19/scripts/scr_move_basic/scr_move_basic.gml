if(aller){
	if (point_distance(x, y, x2, y2) > spd){
	   move_towards_point(x2, y2, spd);
	}
	else
	aller = false;
	
	//for (var i = 0; i < 5; i++)
	//for (var i = 0; i < array_length_2d(arrayTile,j); i++)
	//{
	//	tilemap = layer_tilemap_get_id(arrayTile[j,i]);
	//	//horizontal collision
	//	if (hsp > 0) bbox_side = bbox_right else bbox_side = bbox_left;
	//	if (tilemap_get_at_pixel(tilemap, bbox_side + hsp, bbox_top) != 0) || (tilemap_get_at_pixel(tilemap, bbox_side + hsp, bbox_bottom) != 0) {
	//		if (hsp > 0) x = x - (x mod 16) + 15 - (bbox_right - x);
	//		else x = x - (x mod 16) - (bbox_left - x);
	//		hsp = 0;
	//	}

	//	//Vertical collision
	//	if (vsp > 0) bbox_side = bbox_bottom else bbox_side = bbox_top;
	//	if (tilemap_get_at_pixel(tilemap, bbox_left, bbox_side + vsp) != 0) || (tilemap_get_at_pixel(tilemap, bbox_right, bbox_side + vsp) != 0) {
	//		if (vsp > 0) y = y - (y mod 16) + 15 - (bbox_bottom - y);
	//		else y = y - (y mod 16) - (bbox_top - y);
	//		vsp = 0;
	//	}


	//}
	//x += hsp;
	//y += vsp;
}

if(!aller){
	if (point_distance(x, y, x1, y1) > spd){
	   move_towards_point(x1, y1, spd);
	}
	else
	aller = true;
}