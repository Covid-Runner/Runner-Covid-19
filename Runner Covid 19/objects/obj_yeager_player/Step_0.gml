/// @description Core Game

//input manager
//Gestion de la direction
if keyboard_check(ord("D")) {
	direction -= 5;
	image_angle -= 5
}

if keyboard_check(ord("A")) {
	direction += 5;
	image_angle += 5
}

if keyboard_check_released(ord("W")) {
	current_speed = 0;
	old_speed = 0;
}

if keyboard_check(vk_nokey) {
	global.current_endurance += 2 * variation_up_endurance;
	if (global.current_endurance > max_endurance) global.current_endurance = max_endurance;
}

//Gestion du deplacement
if keyboard_check(ord("W")) {
	current_speed = old_speed;
	current_speed += variation_speed;
	old_speed = current_speed;
	
	if (current_speed > max_speed) current_speed = max_speed;

	global.current_endurance += variation_up_endurance;

	if (global.current_endurance > max_endurance) global.current_endurance = max_endurance;

	if (keyboard_check(vk_lshift) ) {
		current_speed = current_speed * multiplier_run;
	
		global.current_endurance -= variation_down_endurance;
	
		if (current_speed > max_speed * 2) current_speed = max_speed * 2;
	
		show_debug_message("run");
		show_debug_message(current_speed);
		
	}
	
	if global.current_endurance < tired_endurance {
		current_speed = tired_speed;
	}	
	
	show_debug_message("endurance");
	show_debug_message(current_endurance);
	show_debug_message("walk");
	show_debug_message(current_speed);
}

if keyboard_check(ord("S")) {
	current_speed -= variation_speed;
	
	if (current_speed < -max_speed) current_speed = -max_speed;

}



//Gestion du quit
if keyboard_check(vk_escape) {
	game_end();
}


//Collisions
//Collision avec les murs
var _speedx = lengthdir_x(current_speed, direction);
var _speedy = lengthdir_y(current_speed, direction);


if (place_meeting(x + _speedx,y + _speedy, instance_place(x + _speedx,y + _speedy, obj_yeager_collision_parent))) {
		current_speed = 0;		
	}


//Collision avec les bords de la map, peut etre des cas manquants
if (x + sprite_width / 2 + _speedx > room_width) current_speed = 0;
if (y + sprite_height / 2 +_speedy > room_height) current_speed = 0;
if (x - sprite_width / 2 +_speedx < 0) current_speed = 0;
if (y - sprite_height / 2 +_speedy < 0) current_speed = 0;


speed = current_speed;
