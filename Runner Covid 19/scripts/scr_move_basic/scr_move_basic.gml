if(aller){
	if (point_distance(x, y, x2, y2) > spd){
	   move_towards_point(x2, y2, spd);
	}
	else
	aller = false;
}

if(!aller){
	if (point_distance(x, y, x1, y1) > spd){
	   move_towards_point(x1, y1, spd);
	}
	else
	aller = true;
}