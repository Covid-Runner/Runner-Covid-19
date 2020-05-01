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

if keyboard_check(vk_nokey) {
	current_speed = 0;
}

//Gestion du deplacement
if keyboard_check(ord("W")) {
	current_speed += variation_speed;
	if (current_speed > max_speed) current_speed = max_speed;
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
