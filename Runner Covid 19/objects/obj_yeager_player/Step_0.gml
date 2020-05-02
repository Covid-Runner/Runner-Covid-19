/// @description Core Game
var bbox_side;

//input + gestion du sprint
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("Q")) || keyboard_check(ord("A"));
key_up = keyboard_check(ord("Z")) || keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

if (!keyboard_check(vk_lshift) && (!key_down || !key_up || !key_right || !key_left)) {
	global.current_endurance += variation_up_endurance;
	if (global.current_endurance > max_endurance) global.current_endurance = max_endurance;
} else {
	global.current_endurance -= variation_down_endurance;
}


if (!keyboard_check(vk_lshift)) {
	if (global.current_endurance < tired_endurance)	hsp = (key_right - key_left) * 1 else hsp = (key_right - key_left) * 2; 	
} else {
	if (global.current_endurance < tired_endurance)	hsp = (key_right - key_left) * 1 else hsp = (key_right - key_left) * 4; 	
}


if (!keyboard_check(vk_lshift)) {
		if (global.current_endurance < tired_endurance)	vsp = (key_down - key_up) * 1 else vsp = (key_down - key_up) * 2; 	
} else {
	if (global.current_endurance < tired_endurance)	vsp = (key_down - key_up) * 1 else vsp = (key_down - key_up) * 4; 	
}



switch(room_get_name(room))
{
	case "r_lvl1_street":
		var j = 0;
		break;
	case "r_lvl2_mall":
		var j = 1;
		break;
}
//for (var i = 0; i < 5; i++)
for (var i = 0; i < array_length_2d(arrayTile,j); i++)
{
	tilemap = layer_tilemap_get_id(arrayTile[j,i]);
	//horizontal collision
	if (hsp > 0) bbox_side = bbox_right else bbox_side = bbox_left;
	if (tilemap_get_at_pixel(tilemap, bbox_side + hsp, bbox_top) != 0) || (tilemap_get_at_pixel(tilemap, bbox_side + hsp, bbox_bottom) != 0) {
		if (hsp > 0) x = x - (x mod 16) + 15 - (bbox_right - x);
		else x = x - (x mod 16) - (bbox_left -x);
		hsp = 0;
	}

	//Vertical collision
	if (vsp > 0) bbox_side = bbox_bottom else bbox_side = bbox_top;
	if (tilemap_get_at_pixel(tilemap, bbox_left, bbox_side + vsp) != 0) || (tilemap_get_at_pixel(tilemap, bbox_right, bbox_side + vsp) != 0) {
		if (vsp > 0) y = y - (y mod 16) + 15 - (bbox_bottom - y);
		else y = y - (y mod 16) - (bbox_top - y);
		vsp = 0;
	}


}
x += hsp;
y += vsp;